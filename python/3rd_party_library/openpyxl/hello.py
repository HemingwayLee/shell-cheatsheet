import openpyxl

xfile = openpyxl.load_workbook('dietaryfiber.xlsx')
sheet = xfile["veg"]

print(sheet["A1"].value)

val = "" if sheet["A1"].value == "name" else "name"
sheet["A1"] = val

xfile.save('dietaryfiber.xlsx')


