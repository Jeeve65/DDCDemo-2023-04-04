permissionset 11237501 "DDC User"
{
    Assignable = true;
    ExcludedPermissionSets = DDCFull;
    Permissions =
        tabledata "DDC Setup" = R,
        table "DDC Setup" = X,
        codeunit "DDC Main" = X;
}