# PowerShell Script for Bulk Active Directory User Creation

$users = @(
    @{ FirstName="John"; LastName="Doe"; SamAccountName="jdoe"; OU="OU=IT,OU=Corp_Users,DC=CORP,DC=LOCAL" },
    @{ FirstName="Jane"; LastName="Smith"; SamAccountName="jsmith"; OU="OU=Finance,OU=Corp_Users,DC=CORP,DC=LOCAL" }
)

foreach ($user in $users) {
    New-ADUser `
        -GivenName $user.FirstName `
        -Surname $user.LastName `
        -Name "$($user.FirstName) $($user.LastName)" `
        -SamAccountName $user.SamAccountName `
        -UserPrincipalName "$($user.SamAccountName)@CORP.LOCAL" `
        -Path $user.OU `
        -Enabled $true `
        -AccountPassword (ConvertTo-SecureString "P@ssw0rd2026!" -AsPlainText -Force)
}
