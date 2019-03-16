Install-Package -Name AWSPowerShell.NetCore -Source https://www.powershellgallery.com/api/v2/ -ProviderName NuGet -ExcludeVersion -Destination /opt/microsoft/powershell/6/Modules

pwsh
import-module -Name AWSPowerShell.NetCore
Get-IAMRole
Get-IAMRole

https://s3.us-west-1.amazonaws.com/wheresmybucket/index.html


$index_html = @"
<html>
<body>
<p>
Hello, you magnificent bastard!
</p>
</body>
</html>
"@

$policyDoc = @" {
  "Version": "2019-03-16",
  "Statement": [
    {
      "Effect": "Allow",
      "NotAction": "iam:*",
      "Resource": "*"
    }
  ]
}
"@


$policyDoc = @" 
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "NotAction": "iam:*",
      "Resource": "*"
    }
  ]
}
"@

$result=Write-IAMUserPolicy -UserName testuser1 -PolicyName "PowerUserAccess-testuser1-201211201605" -PolicyDocument $policyDoc



