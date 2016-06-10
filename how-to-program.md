% How To Program a Computer
% Thomas E. Vaughan
% 2016 June

# Introduction

In 1984, Apple Computer[^Apple] changed the world.  The popular Macintosh
device ushered in the widespread use of a high-resolution graphical user
interface (GUI) that could be conveniently controlled by a pointing device (the
mouse).  The user could, even without any knowledge of how to write a computer
program, easily learn to do useful work on a Macintosh.  Although easy use was
possible with earlier devices, the Macintosh was the first mass-market
computing device that did not even ship with a computer language (though one
could purchase additional software to enable the writing of programs).

[^Apple]: In 2007, the company changed its name from "Apple Computer" to
"Apple".

By the early 1990s, basic knowledge of how to use a computer became common.
Today, each of the desktop workstation, the point-of-sale terminal, the tablet,
the cell phone, and even the occasional wrist watch is a device with more
computing power than the most advanced, room-sized computers of the 1960s.  The
computer is now an indispensable part of daily life because it can be
simultaneously small, powerful in computation, efficient in use of energy,
inexpensive, rugged, and easy to use.

However, although the pervasiveness of computers suggests widespread knowledge
of their basic use, knowledge of how to *program* a computer---that is,
knowledge of *advanced* usage, which can redefine the operation of the
computer---is not so widespread.  My use of "basic" and "advanced" here is not
standard but serves to make clear the difference between

 - merely using software that already exists and
 - writing new software.

## Basic Usage of a Computer

A computer is the heart of many an electronic device.  Let us define "device"
in the present context as "a thing whose behavior is controlled by an internal
computer".  While good design of a device's *sensory interface* is necessary
for ease of use, good *software* running in the computer is also necessary.  In
the heart of the device, the software controls the user's experience.

The sensory interface includes

 - every *input* (such as a keyboard) that the computer can sense.

 - every *output* (such as a collection of illuminated pixels) that the user
   can sense and

Each input and output might itself be a separate physical device.  In any
event, the computer, the inputs, and the outputs comprise a single, *logical*
device.

The software consists of the program or programs running in the computer.  The
software defines the behavior of the device.  By experimenting with the sensory
interface, the user can learn how the device behaves.  When the user has learnt
how to profit from the device's behavior, the user has mastered *basic* usage
of the device's computer.  Basic usage of a computer does not involve changing
the behavioral rules that are built in to the computer in its existing
software.

## Advanced Usage of a Computer

If a device allow for *advanced* usage, though, then the user can modify in a
deep way either the behavior of the device itself or the behavior of a
different device.[^host-cross]  The advanced user writes new software.
Advanced usage can be deep in that the degree to which a device's behavior can
be changed is limited only by the device's physical construction, the user's
speculative intellect, and the user's available time to work.  Advanced usage
imposes certain requirements on the sensory interface and on the software
already in the device.  Most importantly, a device that allows for advanced
usage must provide an input interface for constructing a new computer program.

[^host-cross]: In the advanced usage of a device, the user writes new software,
which is deployed either on the same device or on a different device.  The
device on which the new software is built is the *host*.  The device for which
the new software is built is called the *target*.  When the target is a
computer of a kind different from that of the host, the build is a *cross*
build.

By "advanced usage" I usually do not mean the writing of just any software.
There is a sense in which writing a Javascript program, which runs only within
the confines of a web browser, is an example of advanced usage.  However, the
more advanced the usage, the deeper the control of the device by way of the
program, the greater the degree to which the device's behavior might be
altered.  So what I typically mean by "advanced usage" is the construction of a
program that can write to every one of the device's sensory outputs, can read
from every one of the device's sensory inputs, and can be stored in a permanent
way in the device to modify its behavior.

## A Brief History of Computing

Before 1949, there was no pre-existing software to aid in writing a new piece
of software.  New software was crafted, for example, by manually flipping
switches to configure individual bits in a computer's read-only memory (ROM),
by punching holes in a paper tape and feeding the tape through a tape reader,
or by punching holes in each of a set of cards and inserting a stack of cards
into a card reader.  Each of the switch set, the tape reader, and the card
reader is an input interface.  Such a process loaded the numbers of a program's
*machine code*, which governs the computer's behavior.

Beginning in 1949, with the EDSAC device[^EDSAC], a special piece of software
called an "assembler" could be installed.  An assembler allows a program to be
written in *assembly language*, rather than directly in machine-code numbers.
The assembler is itself a machine-code program that translates assembly code
into another machine-code program.  In EDSAC, the machine code defining the
assembler program was manually installed by setting switches to configure ROM.
Then any other program could be written by punching holes, corresponding to
assembly instructions, into a paper tape.  A program was represented on a
length of tape that was fed into a tape reader.  EDSAC's assembler translated
the program on the tape into machine code, and then the new program could be
run.  A problem with any approach like this is that, usually, each new kind of
computer has a new and different assembly language.  So, in order for it to run
on the new computer, the same program would have to be re-written by hand in
the new assembly language.

[^EDSAC]: The Electronic Delay Storage Automatic Calculator (EDSAC) was a
tube-based electronic computer constructed by a team led by Maurice Wilkes at
the University of Cambridge in England.

Beginning in 1957 with IBM's FORTRAN language[^FORTRAN], new software could be
written as words in a *portable computer language*, usually just called a
"computer language".  Each line of a computer program in FORTRAN was usually
typed on a mechanical keyboard that punched holes in a rigid card.  A special
piece of software already installed in the computer was the *compiler*.  It
translated the FORTRAN words into machine code so that the program could run.
The advantage of a portable computer language is that even though each new
device might have a different set of machine instructions and a different
assembly language, each new device could come with a FORTRAN compiler that
understands the same, standard FORTRAN language.  So the same FORTRAN program
could be fed into different devices.  Each device's compiler would convert the
FORTRAN code into the appropriate machine-code version of the same program.  By
the early 1960s, electronic-keyboard terminals began commonly to replace
punched cards at the device's input interface. By the early 1970s, a terminal
with keyboard and cathode-ray-tube video screen, rather than keyboard and
paper, became common. Still, punched cards were commonly used for program input
into the 1970s.

[^FORTRAN]: Each early version of the language was called "FORTRAN": FORTRAN
(released in 1957), FORTRAN II (1958), FORTRAN IV (1962), FORTRAN 66 (1966),
and FORTRAN 77 (1978).  Each more recent version of the language is called
"Fortran": Fortran 90 (1991), Fortran 95 (1997), Fortran 2003 (2004), and
Fortran 2008 (2010).  The name is based on the phrase, "formula translation".

In 1975 MITS sold the first commercially successful kit (the Altair 8800) for a
small computing device to be used at home.  Before this, a computer was usually
a large device found at a government or business office.  The Altair 8800 still
had manual switches for loading a bare machine-code program into memory.

Since the late 1970s, new software has almost always been written, even for a
home device, with the assistance of existing software already running.
Starting in 1977, with Apple Computer's introduction of the Apple II, Radio
Shack's introduction of the TRS-80, and Commodore's introduction of the PET,
software incorporated into the home computer enabled not only the easy writing
of new software in a simple, high-level language like BASIC[^BASIC] but also
the rapid growth of a population of users who could operate a computing device
with only basic knowledge of how a computer operates.

[^BASIC]: Beginner's All-purpose Symbolic Instruction Code (BASIC) refers to
any of several similar computer languages designed to be easy to use.

By 1984, the consumer market was ready for Apple Computer's Macintosh.
However, although the Macintosh was relatively easy to use in comparison with
earlier devices, it was also relatively difficult to program. A new Macintosh
did not come with a programming language out of the box; also, the details of
how the hardware and installed software function were kept secret from the
user.  The Macintosh was just one example of a trend toward making the internal
operation of a computer inscrutable and toward making the writing of new,
useful programs for a device difficult or even impossible.

In response to the trend toward making a person's advanced usage of a computer
difficult or impossible, Richard Stallman in 1985 founded the non-profit Free
Software Foundation (FSF).  One of its purposes is to produce freely
distributable software that enables writing software for any computer.  The
FSF's GNU project[^GNU] aims to make a complete system of software for running
a computer.  The GNU system is still incomplete, but many of its core
programs[^FSF-core], along with free software[^other-free] from other projects,
do provide a complete, free system for writing new software.

[^GNU]: "GNU" is a recursive acronym that stands for "GNU's Not Unix". Despite
its name, the GNU project aims to provide a complete Unix-like operating
system. The Unix operating system was developed originally by AT&T in the early
1970s. The C portable computer language was used to write most of Unix, and C
similarly forms the basis for GNU.  So one of the most important tools provided
by GNU is the C compiler.
[^FSF-core]: Such as the GNU Compiler Collection (GCC).
[^other-free]: Such as the Linux kernel.

In the early days of computing, every device allowed for advanced usage.  As
computing has evolved through history, ever more software resides permanently
in the device.  Before 1980 or so, the typical user of a computer was an
advanced user; a common user's needs could be met only if he wrote his own
program.  By the middle of the 1980s, when Apple Computer introduced the
Macintosh, the basic, non-programming use of computing devices was growing
rapidly more common.  Since the early 1990s, when Microsoft introduced a
popular, standard GUI (Microsoft Windows 3.1) for open-architecture personal
computers, the typical computer user has had only basic knowledge of how to use
a computer.  Out of the box, a device purchased today is already loaded with
all of the software that the basic user needs, but advanced usage can be
difficult or expensive.  The most convenient approach to enable advanced usage
is often to install software from the FSF.

## The Content of the Present Book

In what follows, the reader will learn about the advanced usage of a computer.
I begin by describing how a computer works.  Then I introduce some free tools
that, taken together, enable one to write new software in a Unix-like system.
After I introduce the suite of tools, I focus on a compiled language (C, not
FORTRAN).  A compiled language gives great control and speed while allowing a
program to be portable from one device to the next.  I also introduce a
scripting language, Ruby.  Like a compiled language, a scripting language
allows the writing of portable programs but also allows a program to be written
most quickly and concisely.  Although a scripted program is usually not in its
execution speed so fast as a compiled program, the speed of execution is often
fast enough.  Almost every programming project can be efficiently completed
through the development of some combination of compiled and scripted code.  By
referring only to free software (for example, the GNU C compiler and the Ruby
interpreter), I make easy the reader's acquisition of the necessary tools.  The
material here presented gives the reader the power to define a device's
behavior just as he pleases, within the constraints of the device's physical
capability.

# Advanced Usage of a Computer

## How a Computer Works

## Getting a Shell Prompt

## Basic Use of the Shell

## Finding Documentation

## Editing a Text File

## The Simplest C Program

# Programming in the C Language

# Programming in the Ruby Language

