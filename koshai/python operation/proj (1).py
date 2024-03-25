import tabula

pdf_file = "Test PDF.pdf"
excel_file = "output.xlsx"
tables = tabula.read_pdf(pdf_file,pages = 'all')
if tables:
    import pandas as pd
    excel_writer = pd.ExcelWriter(excel_file,engine="xlsxwriter")
    for i,table in enumerate(tables):
        table.to_excel(excel_writer,sheet_name="Sheet_(i)",index=False)
    excel_writer.close()
    print("converted excel")