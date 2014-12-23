
# http://www.sthda.com/english/wiki/r-excel-essentials-read-write-and-format-excel-files-using-r

library("r2excel")
# Create an Excel workbook. 
# Both .xls and .xlsx file formats can be used.
filename <- "r2excel-example1.xlsx"
wb <- createWorkbook(type="xlsx")
# Create a sheet in that workbook to contain the data table
sheet <- createSheet(wb, sheetName = "example1")

# Add header
xlsx.addHeader(wb, sheet, value="Add table",level=1, 
               color="black", underline=1)
xlsx.addLineBreak(sheet, 1)

# Add paragraph : Author
author=paste("Author : Dorian Kcira. \n",
             "@:dkcira@gmail.com.",
             "\n Website : http://ww.caltech.edu", sep="")
xlsx.addParagraph(wb, sheet,value=author, isItalic=TRUE, colSpan=5, 
                  rowSpan=4, fontColor="darkgray", fontSize=14)
xlsx.addLineBreak(sheet, 3)

# Add table : add a data frame
xlsx.addTable(wb, sheet, head(iris), startCol=2)
xlsx.addLineBreak(sheet, 2)

# save the workbook to an Excel file
saveWorkbook(wb, filename)
xlsx.openFile(filename)# View the file