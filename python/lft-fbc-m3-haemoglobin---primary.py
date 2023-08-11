# S Jill Stocks, Evangelos Kontopantelis, Artur Akbarov, Sarah Rodgers, Anthony J Avery, Darren M Aschroft, 2023.

import sys, csv, re

codes = [{"code":"4231","system":"readv2"},{"code":"4232","system":"readv2"},{"code":"4233","system":"readv2"},{"code":"4234","system":"readv2"},{"code":"4235","system":"readv2"},{"code":"4239","system":"readv2"},{"code":"423A.00","system":"readv2"},{"code":"423C.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('lft-fbc-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["lft-fbc-m3-haemoglobin---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["lft-fbc-m3-haemoglobin---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["lft-fbc-m3-haemoglobin---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
