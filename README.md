# Exir
This engine supports import data from xlsx/xls/csv file to database.
File path, database name, column mapping, sheet name can be configured.

## Usage
How to use my plugin.

Config:
Create file config/initializers/exir.rb
Inside the file declare these parameters:
Exir.word_class = "Word"
(The name of the database to insert)
Exir.file = "lib/excels/words.xlsx"
(Directory of excel file)
Exir.mapping_column = {concept: "concept", explaination: "explaination"}
(mapping between the name of database's column and file column, the first one is
the name of database's column)
Exir.sheet_name = 0
(file sheet name)

Use:
Exir::Excelx.import file_name, dictionary_id: 1
Exir::Excelx.import null, dictionary_id: 1
If file_name is not null then it will be used, else the file name in configuration
will be use.
The list of parameter after is a hash. When inserting into database all rows will
have the same of such values. For example all rows will have dictionary_id = 1

## Installation
Create a folder name engines, add this engine inside and rename to 'exir'
Add this line to gem file:
  gem 'exir', path: 'engines/exir'

And then execute:
```bash
$ bundle
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
