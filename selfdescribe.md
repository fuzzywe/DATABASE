classDiagram
    class Database {
        Data Storage
        Metadata Storage
    }
    
    class MetadataStorage {
        Data Dictionary
        Schema Definitions
        Table Structures
        Relationships
        Constraints
        Index Information
    }
    
    class DataStorage {
        Actual Data Records
        Table Contents
        Index Data
    }
    
    class SystemCatalog {
        Table Definitions
        Column Definitions
        User Permissions
        View Definitions
    }

    Database *-- MetadataStorage
    Database *-- DataStorage
    MetadataStorage *-- SystemCatalog
