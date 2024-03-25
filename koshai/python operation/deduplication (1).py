
import pandas as pd
import csv
with open('Test.csv', 'r') as file:
    reader = csv.reader(file, delimiter=',')
    for row in reader:
        print (row)

#Now checking for duplication

with open('Test.csv', 'r') as file:
    reader = csv.reader(file, delimiter=',')  
    header = next(reader)
    unique_rows = {tuple(row) for row in reader}

with open('Deduplicated_Test.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(header) 
    writer.writerows(unique_rows)

print("Deduplication complete. Deduplicated transactions saved at: Deduplicated_Test.csv")