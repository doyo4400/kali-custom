sudo apt install qpdf -y 

qpdf --password='the_password' --decrypt $name_of_pdf.pdf $name_of_pdf_withoutpwd.pdf
