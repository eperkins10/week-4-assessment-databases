log_file = open("um-server-01.txt")
# opening csv file

# start of function (def = function keyword)
# def sales_reports(log_file):
#     for line in log_file:   
#         line = line.rstrip()
#         day = line[0:3]
#         if day == "Mon":
#             print(line)

# wrote a for loop, if the day in line index 0:3 was tuesday, it would print that line.

def hella_melons(log_file):
    for line in log_file:
        line = line.rstrip()
        melons = int(line[2])
        for value in line:
            if melons > 10:
                print(value)


hella_melons(log_file)
# closing file/function
