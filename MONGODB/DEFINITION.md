What is MongoDB?
MongoDB is an open source NoSQL database management program. NoSQL (Not only SQL) is used as an alternative to traditional relational databases. NoSQL databases are quite useful for working with large sets of distributed data. MongoDB is a tool that can manage document-oriented information, store or retrieve information.

MongoDB is used for high-volume data storage, helping organizations store large amounts of data while still performing rapidly. Organizations also use MongoDB for its ad-hoc queries, indexing, load balancing, aggregation, server-side JavaScript execution and other features.

Structured Query Language (SQL) is a standardized programming language that is used to manage relational databases. SQL normalizes data as schemas and tables, and every table has a fixed structure.

Instead of using tables and rows as in relational databases, as a NoSQL database, the MongoDB architecture is made up of collections and documents. Documents are made up of Key-value pairs -- MongoDB's basic unit of data. Collections, the equivalent of SQL tables, contain document sets. MongoDB offers support for many programming languages, such as C, C++, C#, Go, Java, Python, Ruby and Swift.


How does MongoDB work?
MongoDB environments provide users with a server to create databases with MongoDB. MongoDB stores data as records that are made up of collections and documents.

Documents contain the data the user wants to store in the MongoDB database. Documents are composed of field and value pairs. They are the basic unit of data in MongoDB. The documents are similar to JavaScript Object Notation (JSON) but use a variant called Binary JSON (BSON). The benefit of using BSON is that it accommodates more data types. The fields in these documents are like the columns in a relational database. Values contained can be a variety of data types, including other documents, arrays and arrays of documents, according to the MongoDB user manual. Documents will also incorporate a primary key as a unique identifier. A document's structure is changed by adding or deleting new or existing fields.

Sets of documents are called collections, which function as the equivalent of relational database tables. Collections can contain any type of data, but the restriction is the data in a collection cannot be spread across different databases. Users of MongoDB can create multiple databases with multiple collections.

The mongo shell is a standard component of the open-source distributions of MongoDB. Once MongoDB is installed, users connect the mongo shell to their running MongoDB instances. The mongo shell acts as an interactive JavaScript interface to MongoDB, which allows users to query or update data and conduct administrative operations.

A binary representation of JSON-like documents is provided by the BSON document storage and data interchange format. Automatic sharding is another key feature that enables data in a MongoDB collection to be distributed across multiple systems for horizontal scalability, as data volumes and throughput requirements increase.

The NoSQL DBMS uses a single master architecture for data consistency, with secondary databases that maintain copies of the primary database. Operations are automatically replicated to those secondary databases for automatic failover.

MongoDB supporting technologies.
MongoDB supporting technologies include MongoDB Stich, Atlas Global Clusters, and Mobile, along with newer MongoDB updates.
Why is MongoDB used?
An organization might want to use MongoDB for the following:

Storage. MongoDB can store large structured and unstructured data volumes and is scalable vertically and horizontally. Indexes are used to improve search performance. Searches are also done by field, range and expression queries.
Data integration. This integrates data for applications, including for hybrid and multi-cloud applications.
Complex data structures descriptions. Document databases enable the embedding of documents to describe nested structures (a structure within a structure) and can tolerate variations in data.
Load balancing. MongoDB can be used to run over multiple servers.
Features of MongoDB
Features of MongoDB include the following:

Replication. A replica set is two or more MongoDB instances used to provide high availability. Replica sets are made of primary and secondary servers. The primary MongoDB server performs all the read and write operations, while the secondary replica keeps a copy of the data. If a primary replica fails, the secondary replica is then used.
Scalability. MongoDB supports vertical and horizontal scaling. Vertical scaling works by adding more power to an existing machine, while horizontal scaling works by adding more machines to a user's resources.
Load balancing. MongoDB handles load balancing without the need for a separate, dedicated load balancer, through either vertical or horizontal scaling.
Schema-less. MongoDB is a schema-less database, which means the database can manage data without the need for a blueprint.
Document. Data in MongoDB is stored in documents with key-value pairs instead of rows and columns, which makes the data more flexible when compared to SQL databases.
Advantages of MongoDB
MongoDB offers several potential benefits:

Schema-less. Like other NoSQL databases, MongoDB doesn't require predefined schemas. It stores any type of data. This gives users the flexibility to create any number of fields in a document, making it easier to scale MongoDB databases compared to relational databases.
Document-oriented. One of the advantages of using documents is that these objects map to native data types in several programming languages., Having embedded documents also reduces the need for database joins, which can lower costs.
Scalability. A core function of MongoDB is its horizontal scalability, which makes it a useful database for companies running big data applications. In addition, sharding lets the database distribute data across a cluster of machines. MongoDB also supports the creation of zones of data based on a shard key.
Third-party support. MongoDB supports several storage engines and provides pluggable storage engine APIs that let third parties develop their own storage engines for MongoDB.
Aggregation. The DBMS also has built-in aggregation capabilities, which lets users run MapReduce code directly on the database rather than running MapReduce on Hadoop. MongoDB also includes its own file system called GridFS, akin to the Hadoop Distributed File System. The use of the file system is primarily for storing files larger than BSON's size limit of 16 MB per document. These similarities let MongoDB be used instead of Hadoop, though the database software does integrate with Hadoop, Spark and other data processing frameworks.
Disadvantages of MongoDB
Though there are some valuable benefits to MongoDB, there are some downsides to it as well.

Continuity. With its automatic failover strategy, a user sets up just one master node in a MongoDB cluster. If the master fails, another node will automatically convert to the new master. This switch promises continuity, but it isn't instantaneous -- it can take up to a minute. By comparison, the Cassandra NoSQL database supports multiple master nodes. If one master goes down, another is standing by, creating a highly available database infrastructure.
Write limits. MongoDB's single master node also limits how fast data can be written to the database. Data writes must be recorded on the master, and writing new information to the database is limited by the capacity of that master node.
Data consistency. MongoDB doesn't provide full referential integrity through the use of foreign-key constraints, which could affect data consistency.
Security. In addition, user authentication isn't enabled by default in MongoDB databases. However, malicious hackers have targeted large numbers of unsecured MongoDB systems in attacks, which led to the addition of a default setting that blocks networked connections to databases if they haven't been configured by a database administrator.
MongoDB vs. RDBMS: What are the differences?
A relational database management system (RDBMS) is a collection of programs and capabilities that let IT teams and others create, update, administer and otherwise interact with a relational database. RDBMSes store data in the form of tables and rows. Although it is not necessary, RDBMS most commonly uses SQL.

One of the main differences between MongoDB and RDBMS is that RDBMS is a relational database while MongoDB is nonrelational. Likewise, while most RDBMS systems use SQL to manage stored data, MongoDB uses BSON for data storage -- a type of NoSQL database.

While RDBMS uses tables and rows, MongoDB uses documents and collections. In RDBMS a table -- the equivalent to a MongoDB collection -- stores data as columns and rows. Likewise, a row in RDBMS is the equivalent of a MongoDB document but stores data as structured data items in a table. A column denotes sets of data values, which is the equivalent to a field in MongoDB.

MongoDB is also better suited for hierarchical storage.

MongoDB platforms
MongoDB is available in community and commercial versions through vendor MongoDB Inc. MongoDB Community Edition is the open source release, while MongoDB Enterprise Server brings added security features, an in-memory storage engine, administration and authentication features, and monitoring capabilities through Ops Manager.

A graphical user interface (GUI) named MongoDB Compass gives users a way to work with document structure, conduct queries, index data and more. The MongoDB Connector for BI lets users connect the NoSQL database to their business intelligence tools to visualize data and create reports using SQL queries.

Following in the footsteps of other NoSQL database providers, MongoDB Inc. launched a cloud database as a service named MongoDB Atlas in 2016. Atlas runs on AWS, Microsoft Azure and Google Cloud Platform. Later, MongoDB released a platform named Stitch for application development on MongoDB Atlas, with plans to extend it to on-premises databases.

NoSQL databases
NoSQL databases often include document, graph, key-value or wide-column store-based databases.
The company also added support for multi-document atomicity, consistency, isolation, and durability (ACID) transactions as part of MongoDB 4.0 in 2018. Complying with the ACID properties across multiple documents expands the types of transactional workloads that MongoDB can handle with guaranteed accuracy and reliability.

MongoDB history
MongoDB was created by Dwight Merriman and Eliot Horowitz, who encountered development and scalability issues with traditional relational database approaches while building web applications at DoubleClick, an online advertising company that is now owned by Google Inc. The name of the database was derived from the word humongous to represent the idea of supporting large amounts of data.

Merriman and Horowitz helped form 10Gen Inc. in 2007 to commercialize MongoDB and related software. The company was renamed MongoDB Inc. in 2013 and went public in October 2017 under the ticker symbol MDB.

The DBMS was released as open source software in 2009 and has been kept updated since.

Organizations like the insurance company MetLife have used MongoDB for customer service applications, while other websites like Craigslist have used it for archiving data. The CERN physics lab has used it for data aggregation and discovery. Additionally, The New York Times has used MongoDB to support a form-building application for photo submissions.
