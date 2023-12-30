# Word-MHRA-Citation-Style
A custom citation/bibliography style for Microsoft Word 2016 to allow use of Word's citation/bibliography features for the MHRA referencing style. This style is a revision of a style originally created by Yves Dhondt (yves.dhondt@gmail.com) and based on version 2.1 of the BibWord stylesheet, aiming to bring the style both to Word 2016 (Office 365) and to update it to match the 3rd edition (2013) of the MHRA style guide.

## A Note on the Bibliography
Bibliographies are generated according to the MHRA style guide, with some important notes:

### Primary and Secondary Sources 
The bibliography is sorted first by each source's comments field, then by author, then by year, and finally by title. As a result, the bibliography can be split into primary and secondary sources by adding a number to the comments field of each source (e.g. "1" for primary sources and "2" for secondary sources). If the comment field is left blank, the field will default to a '2' (i.e., a secondary source), such that you do not need to number each secondary source individually, or at all if you do not wish to use this feature.

### Hypens instead of a Name for Second & Subsequent Sources
Unfortunately, the stylesheet cannot automatically add a hyphen to the first line of each author's work. This will need to be done manually, but I hope that the stylesheet will still save you some time. I believe this is impossible as each source is independent of one another, so I couldn't figure out any kind logic that could be conducted to achieve this. If you can, however, figure something out, please do sumbit a PR!

### Making Manual Edits
Neither the 'Primary Sources'/'Secondary Sources' heading titles nor the aforementioned hypens can be automatically generated, so you'll need to add them manually at the end of your redrafting process. Remember to convert the bibliography to static text (click the book and arrow icon next to `Update Citations and Bibliography`, then press `Convert bibliography to static text`), othewise all your manual changes will be overriden if you accidentally press `Update Citations and Bibliography` (though you can always `ctrl+z` out of that). I'm sorry this isn't, therefore, your perfect fix for everything: however, I hope that it will save you some time nonetheless!

# Windows Installation & use
1. Download or clone the repository
2. Copy `MHRAFootnote.xsl` into `%appdata%/Roaming/Microsoft/Bibliography/Style` (you can access `%appdata%` by pressing `windows+r` and typing `%appdata%` in the `Run` box that pops up)
3. Open Word (or restart it by closing all open windows, if you had it open already)
4. Select `MHRA` as your `Style` within the `References` top-bar within Word

# A Note of Caution
Word's bibliography definition documents (like this one) are filled with provisions for lots of edge-cases. I will attempt to identify and correct these as I encounter them, but I can give no guarentee it will always produce the right result. Please double-check, and if you notice something wrong you can submit an issue: I'll try and keep things up-to-date as best I can!

Always check your own work thoroughly - I give no guarentee that this style is 100% correct, but hopefully it will speed up your referencing process nonetheless.