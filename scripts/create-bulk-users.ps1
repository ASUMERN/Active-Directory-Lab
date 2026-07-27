# Define users with a guaranteed strong password and precise paths
$users = @(
    @{ FirstName="John"; LastName="Legend"; SamAccountName="jlegend"; OU="OU=IT,OU=kireka_Users,OU=kireka_OUs,DC=KIREKA,DC=LOCAL" },
    @{ FirstName="Janet"; LastName="Laula"; SamAccountName="jlaura"; OU="OU=Finance,OU=kireka_Users,OU=kireka_OUs,DC=KIREKA,DC=LOCAL" },
    @{ FirstName="Daudi"; LastName="Mukasa"; SamAccountName="dmukasa"; OU="OU=HR,OU=kireka_Users,OU=kireka_OUs,DC=KIREKA,DC=LOCAL" }
)

$Password = ConvertTo-SecureString "asuman1.com" -AsPlainText -Force

foreach ($user in $users) {
    New-ADUser `
        -GivenName $user.FirstName `
        -Surname $user.LastName `
        -Name "$($user.FirstName) $($user.LastName)" `
        -SamAccountName $user.SamAccountName `
        -UserPrincipalName "$($user.SamAccountName)@KIREKA.LOCAL" `
        -Path $user.OU `
        -Enabled $true `
        -AccountPassword $Password
}