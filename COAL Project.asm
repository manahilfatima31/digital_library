INCLUDE Irvine32.inc
INCLUDE macros.inc
BUFFER_SIZE = 5000

.data

; **************** Main Menu ******************************************

Student_name byte 30 Dup(?)
student_ID byte 10 Dup(?)
Main_Menu byte '      Enter 1 - TO ISSUE THE BOOK', 0dh, 0ah
byte '      Enter 2 - TO RETURN A BOOK', 0dh, 0ah
byte '      Enter 3 - EXIT', 0dh, 0ah, 0



; ---------------------------------------------------------------------



; **************** Display ********************************************

Name1 byte "Manahil Fatima Anwar   [20K-0134]", 0
Name2 byte "Usman Yaqoob           [20K-0355]", 0
Name3 byte "Abbas Ali              [20K-1630]", 0
Project_Name byte "DIGITAL LIBRARY", 0
Group_Member byte "Group Members: ", 0
col byte ?
row byte ?
; ----------------------------------------------------------------------

; ********************** AVLAIBLE SECTIONS *****************************
string1 byte 'WELCOME TO DIGITAL LIBRARY', 0dh, 0ah, 0
string2  byte '      Enter 1- To continue', 0dh, 0ah
             byte '      Enter 2 - Exit ', 0dh, 0ah, 0

Heading byte 'THANK YOU!', 0ah, 0dh, 0
string3 byte 'HAPPY READING WITH SOME COFFEE! :)', 0dh, 0ah, 0

books byte '      Enter 1 - COMPUTER SCIENCE SECTION', 0dh, 0ah
    byte '      Enter 2 - Computer Organization and Assembly Section ', 0dh, 0ah
         byte '      Enter 3 - MANAGMENT SECTION ', 0dh, 0ah
         byte '      Enter 4 - STORY BOOKS ', 0dh, 0ah
         byte '      Enter 5 - CHEMISTRY SECTION ', 0dh, 0ah
byte '      Enter 6 - PHYSICS SECTION ', 0dh, 0ah
         byte '      Enter 7 - Main Menu ', 0dh, 0ah, 0

spaces BYTE '              ',0


; -----------------------------------------------------------------------

; *********************** Reading Files *********************************
buffer byte BUFFER_SIZE Dup(?)
FileHandle HANDLE ?

; -----------------------------------------------------------------------


; ********************** Chemistry Files **********************************



CHEFILE byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Chemistry\\Display.txt', 0

Introductory_Chemistry byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Chemistry\\Introductry Chemistry.txt', 0
Introductory_Chemistry_Copies DWORD 5

The_elements byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Chemistry\\The elements.txt', 0
The_elements_Copies DWORD 5

Chemistry_Matters byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Chemistry Matters.txt', 0
Chemistry_Matters_Copies DWORD 5

Elementary_Chemistry byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Chemistry\\Elementary Chemistry.txt', 0
Elementary_Chemistry_Copies DWORD 5

; -----------------------------------------------------------------------


; ********************** COAL Files **********************************



COALFILE byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\COAL\\Display.txt', 0

Guide_to_Assembly_Language byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\COAL\\Guide to Assembly Language.txt', 0
Guide_to_Assembly_Language_Copies DWORD 5

mastering_assembly_programming byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\COAL\\mastering assembly programming.txt', 0
mastering_assembly_programming_Copies DWORD 5

Raspberry_Pi_Assembly_Language byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\COAL\\Raspberry Pi Assembly Language.txt', 0
Raspberry_Pi_Assembly_Language_Copies DWORD 5

the_art_of_assembly_language byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\COAL\\the art of assembly language.txt', 0
the_art_of_assembly_language_Copies DWORD 5

; -----------------------------------------------------------------------



; ********************** Computer Science Files **********************************



CSFILE byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Computer Science\\Display.txt', 0

Let_us_C byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Computer Science\\Let us C.txt', 0
Let_us_C_Copies DWORD 5

Programming_fundamentals byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Computer Science\\Programming fundamentals.txt', 0
Programming_fundamentals_Copies DWORD 5

essentials_of_programmimg byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Computer Science\\essentials of programmimg.txt', 0
essentials_of_programmimg_Copies DWORD 5

compilers_principles_and byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Computer Science\\compilers,principles and.txt', 0
compilers_principles_and_Copies DWORD 5

; -----------------------------------------------------------------------




; ********************** Management Files **********************************



MAGFILE byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Management\\Display.txt', 0

financial_intelligence byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Management\\financial intelligence.txt', 0
financial_intelligence_Copies DWORD 5

Good_to_Great byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Management\\Good to Great.txt', 0
Good_to_Great_Copies DWORD 5

principles_of_management byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Management\\principles of management.txt', 0
principles_of_management_Copies DWORD 5

the_leadership_gap byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Management\\the leadership gap.txt', 0
the_leadership_gap_Copies DWORD 5

; -----------------------------------------------------------------------



; ********************** Physics Files **********************************



PHYFILE byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Physics\\Display.txt', 0

Elementary_Physics byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Physics\\Elementary Physics.txt', 0
Elementary_Physics_Copies DWORD 5

From_Classical_to byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Physics\\From Classical to.txt', 0
From_Classical_to_Copies DWORD 5

Physics_for_Particle byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Physics\\Physics for Particle.txt', 0
Physics_for_Particle_Copies DWORD 5

Physics_Matters byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Physics\\Physics Matters.txt', 0
Physics_Matters_Copies DWORD 5

; -----------------------------------------------------------------------



; ********************** Story Files **********************************



STFILE byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Story\\Display.txt', 0

Beloved byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Story\\Beloved.txt', 0
Beloved_Copies DWORD 5

Invisible_Man byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Story\\Invisible Man.txt', 0
Invisible_Man_Copies DWORD 5

One_Hundred_Years_of byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Story\\One Hundred Years of.txt', 0
One_Hundred_Years_of_Copies DWORD 5

The_Great_Gatsby byte 'U:\\Google Drive\\Uni Work\\COAL\\Project2-20220521T144324Z-001\\Project2\\Project2\\Story\\The Great Gatsby.txt', 0
The_Great_Gatsby_Copies DWORD 5

; -----------------------------------------------------------------------














.code

main PROC

call Display
call ReadChar
call clrscr

mov edx, OFFSET Student_name
mov ecx, SIZEOF Student_name
mWrite "Enter Your First Name: "
call ReadString

mov edx, OFFSET student_ID
mov ecx, SIZEOF student_ID
mWrite "Enter ID: "
call ReadString
call CRLF




very_first::
call clrscr
call Home_page
call clrscr
call section



end_program::
call CRLF
call CRLF
mov edx, OFFSET string3
mov ebx, OFFSET Heading
call MsgBox
call CRLF
call WaitMsg


exit
main ENDP


; Home page FUNCTION DEFINITION

Home_page PROC


top:
page:
mov edx, OFFSET Main_Menu
call WriteString
mov edx, OFFSET spaces
call WriteString
call ReadDec

cmp eax, 1
je L1

cmp eax, 2
je L2

cmp eax, 3
je L3
jmp top

L1:
ret
L2:
call Back_to_library

L3:
jmp end_program

ret
Home_page ENDP


; Back to library FUNCTION DEFINITION

Back_to_library PROC
jmp down

Back_to_library_top:
mov eax, 2000
call Delay
down:
call clrscr

mov edx, OFFSET books
call WriteString
mov edx, OFFSET spaces
call WriteString
call ReadDec

cmp eax, 1
je L1

cmp eax, 2
je L2

cmp eax, 3
je L3

cmp eax, 4
je L4

cmp eax, 5
je L5

cmp eax, 6
je L6

cmp eax, 7
jmp very_first

L1:
mWrite "1. Let us C"
call CRLF
mWrite "2. Programming fundamentals"
call CRLF
mWrite "3. compilers,principles and tools"
call CRLF
mWrite "4. Essentials of programmimg"
call CRLF
mWrite "5. Main Menu"
call CRLF
mov eax, 0
call ReadDec

cmp eax, 1
je L11

cmp eax, 2
je L12

cmp eax, 3
je L13

cmp eax, 4
je L14

cmp eax, 5
jmp very_first

L11:
mov eax, Let_us_C_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov Let_us_C_Copies, eax
jmp Back_to_library_top

L12:
mov eax, Programming_fundamentals_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov Programming_fundamentals_Copies, eax
jmp Back_to_library_top

L13:
mov eax, compilers_principles_and_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov compilers_principles_and_Copies, eax
jmp Back_to_library_top

L14:
mov eax, essentials_of_programmimg_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov essentials_of_programmimg_Copies, eax
jmp Back_to_library_top

jmp Back_to_library_top




L2:
mWrite "1. The Art of Assembly Language 2nd Edition."  
call CRLF
mWrite "2. Mastering Assembly Programming"
call CRLF
mWrite "3. Raspberry Pi Assembly Language Programming"
call CRLF
mWrite "4. Guide to Assembly Language"
call CRLF
mWrite "5. Main Menu"
call CRLF
mov eax, 0
call ReadDec

cmp eax, 1
je L21

cmp eax, 2
je L22

cmp eax, 3
je L23

cmp eax, 4
je L24

cmp eax, 5
jmp very_first

L21:
mov eax, the_art_of_assembly_language_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov the_art_of_assembly_language_Copies, eax
jmp Back_to_library_top

L22:
mov eax, mastering_assembly_programming_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov mastering_assembly_programming_Copies, eax
jmp Back_to_library_top

L23:
mov eax, Raspberry_Pi_Assembly_Language_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov Raspberry_Pi_Assembly_Language_Copies, eax
jmp Back_to_library_top

L24:
mov eax, Guide_to_Assembly_Language_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov Guide_to_Assembly_Language_Copies, eax
jmp Back_to_library_top


jmp Back_to_library_top




L3:
mWrite "1. Principle of Managment"  
call CRLF
mWrite "2. Good to Great"
call CRLF
mWrite "3. financial intelligence"
call CRLF
mWrite "4. The leadership gap"
call CRLF
mWrite "5. Main Menu"
call CRLF
mov eax, 0
call ReadDec

cmp eax, 1
je L31

cmp eax, 2
je L32

cmp eax, 3
je L33

cmp eax, 4
je L34

cmp eax, 5
jmp very_first

L31:
mov eax, principles_of_management_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov principles_of_management_Copies, eax
jmp Back_to_library_top

L32:
mov eax, Good_to_Great_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov Good_to_Great_Copies, eax
jmp Back_to_library_top

L33:
mov eax, financial_intelligence_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov financial_intelligence_Copies, eax
jmp Back_to_library_top

L34:
mov eax, the_leadership_gap_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov the_leadership_gap_Copies, eax
jmp Back_to_library_top


jmp Back_to_library_top



L4:
mWrite "1. Beloved"
call CRLF
mWrite "2. The Great Gatsby"
call CRLF
mWrite "3. One Hundred Years of Solitude"
call CRLF
mWrite "4. Invisible Man"
call CRLF
mWrite "5. Main Menu"
call CRLF
mov eax, 0
call ReadDec

cmp eax, 1
je L41

cmp eax, 2
je L42

cmp eax, 3
je L43

cmp eax, 4
je L44

cmp eax, 5
jmp very_first

L41:
mov eax, Beloved_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov Beloved_Copies, eax
jmp Back_to_library_top

L42:
mov eax, The_Great_Gatsby_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov The_Great_Gatsby_Copies, eax
jmp Back_to_library_top

L43:
mov eax, One_Hundred_Years_of_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov One_Hundred_Years_of_Copies, eax
jmp Back_to_library_top

L44:
mov eax, Invisible_Man_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov Invisible_Man_Copies, eax
jmp Back_to_library_top


jmp Back_to_library_top



L5:
mWrite "1. Introductory Chemistry"
call CRLF
mWrite "2. The elements"
call CRLF
mWrite "3. Chemistry Matters"
call CRLF
mWrite "4. Elementary Chemistry"
call CRLF
mWrite "5. Main Menu"
call CRLF
mov eax, 0
call ReadDec

cmp eax, 1
je L51

cmp eax, 2
je L52

cmp eax, 3
je L53

cmp eax, 4
je L54

cmp eax, 5
jmp very_first

L51:
mov eax, Introductory_Chemistry_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov Introductory_Chemistry_Copies, eax
jmp Back_to_library_top

L52:
mov eax, The_elements_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov The_elements_Copies, eax
jmp Back_to_library_top

L53:
mov eax, Chemistry_Matters_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov Chemistry_Matters_Copies, eax
jmp Back_to_library_top

L54:
mov eax, Elementary_Chemistry_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov Elementary_Chemistry_Copies, eax
jmp Back_to_library_top


jmp Back_to_library_top



L6:
mWrite "1. Physics Matters"
call CRLF
mWrite "2. Elementary Physics"
call CRLF
mWrite "3. Space Charge Physics for Particle Accelerators"
call CRLF
mWrite "4. From Classical to Quantum Fields"
call CRLF
mWrite "5. Main Menu"
call CRLF
mov eax, 0
call ReadDec

cmp eax, 1
je L61

cmp eax, 2
je L62

cmp eax, 3
je L63

cmp eax, 4
je L64

cmp eax, 5
jmp very_first

L61:
mov eax, Physics_Matters_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov Physics_Matters_Copies, eax
jmp Back_to_library_top

L62:
mov eax, Elementary_Physics_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov Elementary_Physics_Copies, eax
jmp Back_to_library_top

L63:
mov eax, Physics_for_Particle_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov Physics_for_Particle_Copies, eax
jmp Back_to_library_top

L64:
mov eax, From_Classical_to_Copies
cmp eax, 5
je Back_to_library_top
inc eax
mWrite "Number of copies available: "
call Writedec
mov From_Classical_to_Copies, eax
jmp Back_to_library_top


jmp Back_to_library_top






ret
Back_to_library ENDP











; SECTION FUNTION DEFINTION

section PROC

start:
call clrscr
call CRLF
mov edx, OFFSET string1
call WriteString

sec:
mov edx, OFFSET books
call WriteString
mov edx, OFFSET spaces
call WriteString
call ReadDec

cmp eax, 1
je L1

cmp eax, 2
je L2

cmp eax, 3
je L3

cmp eax, 4
je L4

cmp eax, 5
je L5

cmp eax, 6
je L6

cmp eax, 7
jmp very_first




L1: call Computer_Science
jmp L8
L2: call Coal_Sec
jmp L8
L3: call Managment_Sec
jmp L8
L4: call Story_Sec
jmp L8
L5: call Chemistry_Sec
jmp L8
L6: call Physice_Sec
jmp L8


L8:
mov edx, OFFSET string2
call WriteString
mov edx, OFFSET spaces
call WriteString
call ReadDec

cmp eax, 1
je start



ret
section ENDP

; Computer_Science Function Definition

Computer_Science PROC

top:
call clrscr
call CRLF

mov edx, OFFSET CSFILE  
mov ecx, SIZEOF CSFILE  

mov edx, OFFSET CSFILE  
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, 0
call CRLF
mWrite "Press key to Issue the book: "
call ReadDec

cmp eax, 1
je L1

cmp eax, 2
je L2

cmp eax, 3
je L3

cmp eax, 4
je L4

cmp eax, 5
je bottom

mWrite "Wrong key Entered, Press again."
mov eax, 3000
call Delay
jmp top


L1:
mov ebx, Let_us_C_Copies  
dec ebx
mov Let_us_C_Copies , ebx
cmp ebx, 0
jng icc
mov eax, 0

mov edx, OFFSET Let_us_C
mov ecx, SIZEOF Let_us_C

mov edx, OFFSET Let_us_C
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, Let_us_C_Copies
mWrite "Number of copies remaining "
call WriteDec
call CRLF
mov eax, 3000
call Delay
jmp top

icc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top




L2:
mov ebx, Programming_fundamentals_Copies
dec ebx
mov Programming_fundamentals_Copies , ebx
cmp ebx, 0
jng tcc

mov edx, OFFSET Programming_fundamentals
mov ecx, SIZEOF Programming_fundamentals

mov edx, OFFSET Programming_fundamentals
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

tcc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top




L3:
mov ebx, compilers_principles_and_Copies
dec ebx
mov compilers_principles_and_Copies , ebx
cmp ebx, 0
jng cmcc

mov edx, OFFSET compilers_principles_and
mov ecx, SIZEOF compilers_principles_and

mov edx, OFFSET compilers_principles_and
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

cmcc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top


L4:
mov ebx, essentials_of_programmimg_Copies
dec ebx
mov essentials_of_programmimg_Copies , ebx
cmp ebx, 0
jng ecc

mov edx, OFFSET essentials_of_programmimg
mov ecx, SIZEOF essentials_of_programmimg

mov edx, OFFSET essentials_of_programmimg
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

ecc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top





L5:

call CRLF
call CRLF
bottom:

ret
Computer_Science ENDP



; Computer Organization and Assembly Section

Coal_Sec PROC

top:
call clrscr
call CRLF

mov edx, OFFSET COALFILE
mov ecx, SIZEOF COALFILE

mov edx, OFFSET COALFILE
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, 0
call CRLF
mWrite "Press key to Issue the book: "
call ReadDec

cmp eax, 1
je L1

cmp eax, 2
je L2

cmp eax, 3
je L3

cmp eax, 4
je L4

cmp eax, 5
je bottom

mWrite "Wrong key Entered, Press again."
mov eax, 3000
call Delay
jmp top


L1:
mov ebx, the_art_of_assembly_language_Copies
dec ebx
mov the_art_of_assembly_language_Copies, ebx
cmp ebx, 0
jng icc
mov eax, 0

mov edx, OFFSET the_art_of_assembly_language
mov ecx, SIZEOF the_art_of_assembly_language

mov edx, OFFSET the_art_of_assembly_language
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, the_art_of_assembly_language_Copies
mWrite "Number of copies remaining "
call WriteDec
call CRLF
mov eax, 3000
call Delay
jmp top

icc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top




L2:
mov ebx, mastering_assembly_programming_Copies
dec ebx
mov mastering_assembly_programming_Copies, ebx
cmp ebx, 0
jng tcc

mov edx, OFFSET mastering_assembly_programming
mov ecx, SIZEOF mastering_assembly_programming

mov edx, OFFSET mastering_assembly_programming
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

tcc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top




L3:
mov ebx, Raspberry_Pi_Assembly_Language_Copies
dec ebx
mov Raspberry_Pi_Assembly_Language_Copies, ebx
cmp ebx, 0
jng cmcc

mov edx, OFFSET Raspberry_Pi_Assembly_Language
mov ecx, SIZEOF Raspberry_Pi_Assembly_Language

mov edx, OFFSET Raspberry_Pi_Assembly_Language
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

cmcc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top


L4:
mov ebx, Guide_to_Assembly_Language_Copies
dec ebx
mov Guide_to_Assembly_Language_Copies, ebx
cmp ebx, 0
jng ecc

mov edx, OFFSET Guide_to_Assembly_Language
mov ecx, SIZEOF Guide_to_Assembly_Language

mov edx, OFFSET Guide_to_Assembly_Language
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

ecc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top





L5:

call CRLF
call CRLF
bottom:


ret
Coal_Sec ENDP



; Managment_Sec Function Definition

Managment_Sec PROC


top:
call clrscr
call CRLF

mov edx, OFFSET MAGFILE  
mov ecx, SIZEOF MAGFILE  

mov edx, OFFSET MAGFILE  
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, 0
call CRLF
mWrite "Press key to Issue the book: "
call ReadDec

cmp eax, 1
je L1

cmp eax, 2
je L2

cmp eax, 3
je L3

cmp eax, 4
je L4

cmp eax, 5
je bottom

mWrite "Wrong key Entered, Press again."
mov eax, 3000
call Delay
jmp top


L1:
mov ebx, principles_of_management_Copies  
dec ebx
mov principles_of_management_Copies  , ebx
cmp ebx, 0
jng icc
mov eax, 0

mov edx, OFFSET principles_of_management
mov ecx, SIZEOF principles_of_management

mov edx, OFFSET principles_of_management
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, principles_of_management_Copies
mWrite "Number of copies remaining "
call WriteDec
call CRLF
mov eax, 3000
call Delay
jmp top

icc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top




L2:
mov ebx, Good_to_Great_Copies
dec ebx
mov Good_to_Great_Copies , ebx
cmp ebx, 0
jng tcc

mov edx, OFFSET Good_to_Great
mov ecx, SIZEOF Good_to_Great

mov edx, OFFSET Good_to_Great
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

tcc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top




L3:
mov ebx, financial_intelligence_Copies
dec ebx
mov financial_intelligence_Copies , ebx
cmp ebx, 0
jng cmcc

mov edx, OFFSET financial_intelligence
mov ecx, SIZEOF financial_intelligence

mov edx, OFFSET financial_intelligence
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

cmcc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top


L4:
mov ebx, the_leadership_gap_Copies
dec ebx
mov the_leadership_gap_Copies , ebx
cmp ebx, 0
jng ecc

mov edx, OFFSET the_leadership_gap
mov ecx, SIZEOF the_leadership_gap

mov edx, OFFSET the_leadership_gap
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

ecc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top





L5:

call CRLF
call CRLF
bottom:

ret
Managment_Sec ENDP

; Story_Sec Function Definition

Story_Sec PROC


top:
call clrscr
call CRLF

mov edx, OFFSET STFILE  
mov ecx, SIZEOF STFILE  

mov edx, OFFSET STFILE  
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, 0
call CRLF
mWrite "Press key to Issue the book: "
call ReadDec

cmp eax, 1
je L1

cmp eax, 2
je L2

cmp eax, 3
je L3

cmp eax, 4
je L4

cmp eax, 5
je bottom

mWrite "Wrong key Entered, Press again."
mov eax, 3000
call Delay
jmp top


L1:
mov ebx, Beloved_Copies  
dec ebx
mov Beloved_Copies , ebx
cmp ebx, 0
jng icc
mov eax, 0

mov edx, OFFSET Beloved
mov ecx, SIZEOF Beloved

mov edx, OFFSET Beloved
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, Beloved_Copies
mWrite "Number of copies remaining "
call WriteDec
call CRLF
mov eax, 3000
call Delay
jmp top

icc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top




L2:
mov ebx, The_Great_Gatsby_Copies
dec ebx
mov The_Great_Gatsby_Copies , ebx
cmp ebx, 0
jng tcc

mov edx, OFFSET The_Great_Gatsby
mov ecx, SIZEOF The_Great_Gatsby

mov edx, OFFSET The_Great_Gatsby
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

tcc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top




L3:
mov ebx, One_Hundred_Years_of_Copies
dec ebx
mov One_Hundred_Years_of_Copies , ebx
cmp ebx, 0
jng cmcc

mov edx, OFFSET One_Hundred_Years_of
mov ecx, SIZEOF One_Hundred_Years_of

mov edx, OFFSET One_Hundred_Years_of
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

cmcc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top


L4:
mov ebx, Invisible_Man_Copies
dec ebx
mov Invisible_Man_Copies , ebx
cmp ebx, 0
jng ecc

mov edx, OFFSET Invisible_Man
mov ecx, SIZEOF Invisible_Man

mov edx, OFFSET Invisible_Man
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

ecc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top





L5:

call CRLF
call CRLF
bottom:

ret
Story_Sec ENDP

; Chemistry_Sec Function Definition

Chemistry_Sec PROC

top:
call clrscr
call CRLF

mov edx, OFFSET CHEFILE
mov ecx, SIZEOF CHEFILE

mov edx, OFFSET CHEFILE
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, 0
call CRLF
mWrite "Press key to Issue the book: "
call ReadDec

cmp eax, 1
je L1

cmp eax, 2
je L2

cmp eax, 3
je L3

cmp eax, 4
je L4

cmp eax, 5
je bottom

mWrite "Wrong key Entered, Press again."
mov eax, 3000
call Delay
jmp top


L1:
mov ebx, Introductory_Chemistry_Copies
dec ebx
mov Introductory_Chemistry_Copies, ebx
cmp ebx, 0
jng icc
mov eax, 0

mov edx, OFFSET Introductory_Chemistry
mov ecx, SIZEOF Introductory_Chemistry

mov edx, OFFSET Introductory_Chemistry
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, Introductory_Chemistry_Copies
mWrite "Number of copies remaining "
call WriteDec
call CRLF
mov eax, 3000
call Delay
jmp top

icc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top




L2:
mov ebx, The_elements_Copies
dec ebx
mov The_elements_Copies, ebx
cmp ebx, 0
jng tcc

mov edx, OFFSET The_elements
mov ecx, SIZEOF The_elements

mov edx, OFFSET The_elements
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

tcc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top




L3:
mov ebx, Chemistry_Matters_Copies
dec ebx
mov Chemistry_Matters_Copies, ebx
cmp ebx, 0
jng cmcc

mov edx, OFFSET Chemistry_Matters
mov ecx, SIZEOF Chemistry_Matters

mov edx, OFFSET Chemistry_Matters
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

cmcc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top


L4:
mov ebx, Elementary_Chemistry_Copies
dec ebx
mov Elementary_Chemistry_Copies, ebx
cmp ebx, 0
jng ecc

mov edx, OFFSET Elementary_Chemistry
mov ecx, SIZEOF Elementary_Chemistry

mov edx, OFFSET Elementary_Chemistry
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

ecc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top





L5:

call CRLF
call CRLF
bottom:

ret
Chemistry_Sec ENDP

; Physice_Sec Function Definition

Physice_Sec PROC


top:
call clrscr
call CRLF

mov edx, OFFSET PHYFILE  
mov ecx, SIZEOF PHYFILE  

mov edx, OFFSET PHYFILE
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, 0
call CRLF
mWrite "Press key to Issue the book: "
call ReadDec

cmp eax, 1
je L1

cmp eax, 2
je L2

cmp eax, 3
je L3

cmp eax, 4
je L4

cmp eax, 5
je bottom

mWrite "Wrong key Entered, Press again."
mov eax, 3000
call Delay
jmp top


L1:
mov ebx, Physics_Matters_Copies  
dec ebx
mov Physics_Matters_Copies , ebx
cmp ebx, 0
jng icc
mov eax, 0

mov edx, OFFSET Physics_Matters
mov ecx, SIZEOF Physics_Matters

mov edx, OFFSET Physics_Matters
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, Physics_Matters_Copies
mWrite "Number of copies remaining "
call WriteDec
call CRLF
mov eax, 3000
call Delay
jmp top

icc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top




L2:
mov ebx, Elementary_Physics_Copies
dec ebx
mov Elementary_Physics_Copies , ebx
cmp ebx, 0
jng tcc

mov edx, OFFSET Elementary_Physics
mov ecx, SIZEOF Elementary_Physics

mov edx, OFFSET Elementary_Physics
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

tcc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top




L3:
mov ebx, Physics_for_Particle_Copies
dec ebx
mov Physics_for_Particle_Copies , ebx
cmp ebx, 0
jng cmcc

mov edx, OFFSET Physics_for_Particle
mov ecx, SIZEOF Physics_for_Particle

mov edx, OFFSET Physics_for_Particle
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

cmcc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top


L4:
mov ebx, From_Classical_to_Copies
dec ebx
mov From_Classical_to_Copies , ebx
cmp ebx, 0
jng ecc

mov edx, OFFSET From_Classical_to
mov ecx, SIZEOF From_Classical_to

mov edx, OFFSET From_Classical_to
call OpenInputFile
mov FileHandle, eax

mov edx, OFFSET buffer
mov ecx, BUFFER_SIZE
call ReadFromFile
mov buffer[eax], 0  ; Inserting NULL Terminator


mov edx, OFFSET buffer
call WriteString
call crlf
mov eax, FileHandle
call CloseFile

mov eax, ebx
mWrite "Number of copies remaining "
call WriteDec
mov eax, 3000
call Delay
jmp top

ecc:
mWrite "No more copies available"
mov eax, 3000
call Delay
jmp top





L5:

call CRLF
call CRLF
bottom:


ret
Physice_Sec ENDP

; DISPLAY FUNCTION OF DIGITAL LIBRARY
Display PROC
mov dh, 12
mov dl, 53
call Gotoxy

mov eax, 11
call SetTextColor
mov ecx, LENGTHOF Project_Name
mov esi, OFFSET Project_Name

pn:
mov al, [esi]
call WriteChar
mov eax, 50
call Delay
add esi, 1

loop pn

mov dh, 14
mov dl, 56
call Gotoxy

mov ecx,LENGTHOF Group_Member
mov esi, OFFSET Group_Member

p1:
mov al,[esi]
call WriteChar
mov eax, 30
call Delay
add esi, 1

Loop p1

mov dh, 16
mov dl, 56
call Gotoxy

mov ecx, LENGTHOF Name1
mov esi, OFFSET Name1

pn1:
mov al,[esi]
call writechar
mov eax,30
call delay
add esi,1

loop pn1

mov dh,17
mov dl,56
call gotoxy

mov ecx,LENGTHOF Name2
mov esi,offset Name2

pn2:
mov al,[esi]
call writechar
mov eax,30
call delay
add esi,1

loop pn2

mov dh,18
mov dl,56
call gotoxy

mov ecx,LENGTHOF Name3
mov esi,offset Name3

pn3:
mov al,[esi]
call writechar
mov eax,30
call delay
add esi,1

loop pn3

mov dh,18
mov dl,56
call gotoxy

mov dh,4
mov dl,30
call gotoxy
mov edx,0
mov eax,0
mov row,75
mov col,25

mov al,'*'
movzx ecx,row

L1:
call WriteChar
mov edx,20
call delay

loop L1

mov dh,4
mov dl,105

movzx ecx,col
L2:
mov al,'*'
call gotoxy
call WriteChar
mov eax,30
call delay
inc dh
loop L2

mov dh,28
mov dl,105
add row,1

movzx ecx,row
L3:
mov al,'*'
call gotoxy
call WriteChar
mov eax,30
call delay
dec dl
loop L3

mov dh,4
mov dl,30

movzx ecx,col
L4:
   mov al,'*'
call gotoxy
call WriteChar
mov eax,30
call delay
inc dh
loop L4


ret
Display ENDP



END main