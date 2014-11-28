# LinkSquares Processing Task

This task is the bread and butter of the LinkSquares system, and it
performs the following steps:

* Accept a set of Gmail credentials
* Use said credentials to download the person's GMail inbox
* Read through the last 100 emails in their inbox
* For each email that contains a link export it to a CSV file in the
  following format:
    | Link text | Link url                | Link title               | Email Subject  | Sender            | Date Sent |
    |-----------|-------------------------|--------------------------|----------------|-------------------|-----------|
    | Cool Tool | https://www.example.com | This makes you life easy | Check this out | joe@stylitics.com | 11/24/14  |
* Remove any duplicates from the CSV file
* Save the file to EMAIL_ADDRESS_links.csv
