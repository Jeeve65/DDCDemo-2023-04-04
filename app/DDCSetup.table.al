table 11237500 "DDC Setup"
{
    DataClassification = SystemMetadata;
    Caption = 'DDC Setup';

    fields
    {
        field(1; PrimaryKey; Code[10])
        {
            DataClassification = SystemMetadata;
            Caption = 'Primary Key';
        }
        field(10; WelcomeMessage; Text[250])
        {
            DataClassification = CustomerContent;
            Caption = 'Welcome message';
        }
    }

    keys
    {
        key(Key1; PrimaryKey)
        {
            Clustered = true;
        }
    }
}