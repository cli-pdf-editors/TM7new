# TM7new
Preferred way to edit TM7 (Application to extend stay in Thailand)

## But first

Download or clone the [Script repository](https://github.com/cli-pdf-editors/PdfEditBash) Install all shell scripts to somewhere on your **$PATH** or include the directory you downloaded into on that  **$PATH** .

### Scripts to use

1. *pe_editps.sh* - you can run this immediately and it will generate a PDF file named <u>PM7Filled.pdf</u>. If you view this file in your favourite PDF viewer you will observe that the form is filled in with nonsense values. So next you need to run,
2. *pe_updatetext.sh* on each of your 2 data files, which are named as <u>tm7_1.dat</u>  and <u>tm7_2.dat</u> in turn. If you are planning on using this for more than one person you might consider creating appropriately named *git* branches say, *his* and *hers*, or *Bob* and *Jenny* etc.
   - There are two main types of data in these files, *stable* and *variable* . The stable data comprises information that doesn't change such as your names, date of birth, nationality, etc, and other information that changes rarely such as that about your passport.
   - *Variable* data comprises information about your ports of departure from, port of arrival, mode of transport and various dates. There is no *variable* data on  <u>tm7_2.dat</u>  but that is because address data is stable for me. You can easily change that.
   - *pe_updatetext.sh* has options, -v for variable data, -S for stable data, -s *yourownchosenword* for something special that you want to do. To start you would likely run with the -S option to insert your personal data, and run again with the -v option each time you want to make an application for extension.
3. *pe_fontfunc.sh* you have your own private copy in the directory where you are working with this. It is not a complete runnable script but is included in *pe_editps.sh* when it is generating the filled in PDF. You may edit this file to change the font name and font size. It's probably best to limit the fonts to Times-Roman (a serif font), and Helvetica (sans serif). I generally prefer to use a font size that looks like it's about the same as on the source form.
4. When editing <u>tm7_1.dat</u> you will notice that, as installed all Mr/Mrs/Miss are all clobbered by 'X'. This form denotes your title by crossing out what you are not. So if you are a Mr, then the way to deal with that is to replace the 'X' with an underscore, '_'. Similarly, if there are any other fields that you want to avoid completing, just replace the existing text with the same. NB the underscore is never printed on the PDF, it's replaced by a single space.
5. You may, if you want, just edit your data files with your favourite text editor, some samples of the files below,
   - `Written at Immigration Office,424,702,Chiang Mai,variable`
     `Surname,252,572,Surname,stable`
     `Firstname,415,572,Firstname,stable`
     `Mr,140,555,X,stable`
     `Mrs,156,555,X,stable`
     `Miss,175,555,X,stable`
   - `Telephone,290,324,Telephone:,immutable`
   `phone,350,324,08 1234 8765,stable`
`emaillabel,311,300,Email:,immutable`
`email,350,300,xyzjustme@emailprovider.com,stable`
- As for the telephone and email data above, what is unusual is that it is not provided pre-printed on the original form. The information provided is required by Chiang Mai Immigration and I have no idea if other offices have the same requirement. If they don't just delete the last 4 lines of <u>tm7_2.dat</u>. When editing using the -S option you will never see the lines I've labeled immutable, that's so the lines that cause the labels to be printed are not seen so can't be clobbered with actual phone numbers etc.
6. *pe_datanames.sh* running this lists the names of the data fies that must be edited. In this repo there are two. However, many 2 page forms require edits only on the first page, the second being reserved for instructions to the applicant.
7. There are a number of other scripts which are used only for creating a repository for a different form, so not used with the TM7 form.
   - *pe_initform.sh* used only to create the data files needed to process a new form.
   - *pe_calcpoints.sh* calculates the distance in points to a data field on the form from the left, X, and from the bottom, Y. By default you measure the distances in centimeters followed by a decimal fraction. Options allow you to use other units.
   - *pe_formdata.sh* allows you to enter the lines into the data file(s) for the project. You may find it expedient to quit after a line or two, and complete the entry using an ordinary text editor. *pe_formdata.sh* always appends to the file so corrections and/or deletions must be done in an ordinary text editor.
   - *pe_sanitisedata.sh* not a runnable script. Other programs include it for the functions it provides.

### Further Information

- [About this site](https://github.com/cli-pdf-editors/_AboutThisSite)
- [Pdf Edit Bash](https://github.com/cli-pdf-editors/PdfEditBash) provides more information about how to use make your own batch form editors for other PDF forms.

### Contact me

[Bob Parker](bob.parker@programmer.net)