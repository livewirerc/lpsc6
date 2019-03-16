function Set-MyCloud {
    Import-Module AWSPowerShell.NetCore

    Set-AWSCredentials -ProfileName jabels

}

function Update-MyCloud {
    $buckets= Get-S3Bucket
    $current= Get-ChildItem -Path /opt/buckets301 -Recurse |
      ForEach-Object -Process {$_.FullName}

    foreach ($file in $current) {
        foreach ($bucket in $buckets) {
            Write-S3Object -BucketName $bucket.BucketName -File $file -CannedACLName public-read
        }
    }
}