# Log Script
## Objctives  
  The task is to investigate these 404 errors, focusing on identifying which IP addresses are associated with `404` error and how frequently they happened.

## Steps  
1. Search the log file for "404" errors using command `grep`
2. Identify the IP addresses by using `awk`.
3. Count the number of times each IP encountered a 404 by using `sort` and `uniq -c`. `sort` will list the same IP address together and `uniq -c` will count the occurrence of each unique ip address.

## Results
<div align='center'>
  <img width="439" alt="image" src="https://github.com/user-attachments/assets/bbd23109-dd21-43ff-9c23-e165b72b6bd6">
</div>

## Conclusion
This script was completed using a few commands that read and write all at once, instead of processing line by line. It has Pros and Cons: 
1. More efficient at processing large files than reading and writing line by line.
2. Requires less code.
3. Consumes more memory when loading the entire file compared to reading the file line by line.
4. Offers less flexibility due to batch processing.
