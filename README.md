1) Find longest object (to estimate table size. In powershell type:
    get-content .\dataset.json | sort-object -property length | select-object -last 1

2) open file in text editor (e.g. SublimeText) and add comma in the beginning of every line

3) to add comma on editor: 
	 i)   Ctrl + A
	 ii)  Ctrl + Shift + L 
	 iii) press left arrow on keyboard (<-)
	 iv)	 press comma (,)

4) save file

5) continue with import.sql
