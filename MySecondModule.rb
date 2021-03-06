module MySecondModule
   
# This module contains a group of useful functions, procedures, and objects. It is considered by many to be a library
# of re-usable computer code. For that reason a GNU GPL licence is used, since this library is bound to get larger.
#
# This module uses a programming language called Ruby. 
# keywords: module, function, procedure, object # Copyright (C) 2017 Seth1024T (https://github.com/Seth1024T) 
# This module was created from bits of code from: https://github.com/Seth1024T/Hello-World 
# Changes made include the use of the keyword modules, and changing the constant Decoration1 to the function decoration_funct1
# Because this code is now in a separate file (that may be expanded to include more code), it may be easily re-used by other
# programs.
#
# Thus these parts of the code are no longer fixed to a main program, but might be used by many different programs.
=begin 
This program is free software: you can redistribute it and/or modify it under the terms of the 
GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or 
(at your option) any later version. 
   
This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the 
implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License 
for more details. You should have received a copy of the GNU General Public License along with this program. 
If not, see http://www.gnu.org/licenses/.
=end 
# If you want to make the program interactive, then the GPL licence 
# suggests you include code to let users view the relevant parts of 
# the GPL licence: http://www.gnu.org/licenses/gpl.html; 
# see section 17. puts "***************************************"

=begin
Modules are generally not stand alone programs, they are often included in programs
to speed up the rate of code generation. They are often referred to as libraries of 
re-usable, often generalized, and useful code.

in general modules should not include variables, arrays, or instances of objects.
You can put variables into functions (as is done here) to get around that problem.

You can also use objects to do a similar thing for arrays, and variables. Examples
of useful constants include ones that are used for conversions, or constants that 
are used in science calculations for example.

Ruby lets programmers do many things, and it is a matter of style on what you chose
to use. Here modules are for general use (in most cases) and often contain functions, 
procedures, and objects.

People that do very low level programming may like to keep variables in arrays that 
are in turn stored in modules, but that level of programming can require specialist 
knowledge. Knowledge not only of low level programming, but quirks about ruby, such 
as what exactly is an integer representation in ruby--and that might surprise you--
might be required for low level programming. but that discussion is outside the 
scope of this section, and discussion.

Since this program uses a Ruby Command Prompt Window. The below patterns help measure
how long your character print lines are while you are programming code.

# 1234567-10-2345678901234567-20-234567-30-234567-40-234567-50-234567-60-234567-50-234
# 123456789012345678901234567890123456789012345678901234567890123456789012345678901234

=end
   
   def LicenceNotice(yr_name_link="2018 Seth1024T (https://github.com/Seth1024T)")
      puts ""
      puts "***************************************" 
      puts "Copyright (C) #{yr_name_link})" 
      puts "This Program uses a GNU GPL V3 licence or later. Since a " 
      puts "Ruby program must have the source code to run in most cases,"
      puts "please check the source code for details about the GNU GPL V3" 
      puts "licence or go to directly to http://www.gnu.org/licenses/ or"
      puts "http://www.gnu.org/licenses/gpl.html for more specific details."
      puts "Details about the licence that this program uses, can also be"
      puts "found at the github URL (web address) mentioned above."
      puts "***************************************"
      puts ""
      puts ""
   end
   def blankline 
      puts " " 
   end
   # notice we changed the variable decoration1 into 
   # the function: decoration_funct1 in line with the
   # idea that only functions, procedures, and classes
   # exist here.
   def decoration_funct1
      return("*********************************")
   end
   #
   # GENERAL USE FUNCTIONS (NOT SPECIFIC TO ONE PROGRAM)
   #
   # Screen Width Measure (one of many posssible ways to do this)
   # These functions are not used here directly, they can be put into small seperate
   # programs though. Modules are generaly designed for one specific program.
   #
   # Code To Measure The Ruby Command Prompt Window Width
   
   def traditional_screen_length(screenwidth=80)
   # My tests indicate the a full screen can go up to 230 on one screen...
   # A constant has a Global Span, so ScreenWithConstant=230 could be put at the top of
   # the program, and alter all fuctions for example that use 
   # traditional_screen_length(ScreenWithConstant). Classes (not covered yet) can also
   # be a handy way to do this without the use of a global constant.
      return (screenwidth) #The new window is expandable to a full screen
   end
   
   def larger_then_traditional_screen_width(string_length)
      if (string_length>traditional_screen_length)
         val=true
      else
         val=false
      end
      return (val)
   end
   
   def test_screen_width_in_multiples_of_ten(amult=8)
      puts "1234567890"*amult
   end
   
   # test_screen_character_width prints out a pattern like this: "1234567890"
   # When the screen is measured in a manual way the programmer taps the
   # keyboard to make a repeating patterns of "1234567890," so this program is
   # built to mimic that. Somtimes this sort of programming is called backward
   # compatability. It also allows old conventions to remain in place, and for
   # things like legacy programs (very old code) to continue working.
   def test_screen_character_width(amult=80, spacer_character= "--")
      screen_len=spacer_character+amult.to_s # convet to string
      cl=screen_len.length                   # get string length
      decoration_length=amult-cl
      for i in 0..(decoration_length-1)
         if i>=10
            rem=i%10 # the modulo operator returns the remainder of a division
            if ((rem+1)==10)
               print "0"
            else
               print rem+1
            end
         else   
            if ((i+1)==10)
               print "0"
            else
               print i+1
            end
         end
      end
      puts screen_len
   end
   
   # General Code To Make Text Patterns
   # The above screen measures might help in deiding how long a decoration string should
   # be.
   #
   # While there is a lot of new code here, there's not a great deal chages in the main
   # program.
   # 
   # One thing to condier with making code is who it's for. The below functions are robust
   # to some degree, as they are built for the programmer, but more could be added to them.
   #
   # By robust code, the programmer is refering to the idea that despite some mistakes a
   # programmer might make, the functions should still work. There is a trade off in time
   # versus productivity, and you may have to make such decisions for each section of code
   # you make.
   
   def maxsymbols(a_symbol="- ", how_many=33, screenlen=80)
      smblen=a_symbol.length
      strlen=smblen*how_many
      if (strlen>screenlen)
         hmy=(80/smblen).to_i #just in case float results from the division.
      else
         hmy=how_many
      end
      return (hmy)
   end
   
   def decoration_singlesymbols(a_symbol="*", how_many=33, screenlen=80)
      how_many=maxsymbols(a_symbol, how_many, screenlen)
      if (a_symbol.length>1)
         first_symbol=a_symbol[0]
         new_pattern=first_symbol*how_many
      elsif (a_symbol.length==1)
         new_pattern=a_symbol*how_many
      else
         a_symbol="*"
         new_pattern=a_symbol*how_many
      end
      return (new_pattern)
   end
   
   def decoration_multisymbols(a_symbol="- ", how_many=11, screenlen=80)
      how_many=maxsymbols(a_symbol, how_many, screenlen)
      if (a_symbol.length>1)
         first_symbol=a_symbol[0]
         new_pattern=a_symbol*how_many+first_symbol
      elsif (a_symbol.length==1)
         new_pattern=a_symbol*how_many
      else
         a_symbol="*"
         new_pattern=a_symbol*how_many
      end
      return (new_pattern)
   end
   
   def decoration_patterns(a_symbol="1234567890", how_many=3, end_symbol="123", maxlen=80)
      how_many=maxsymbols(a_symbol, how_many, (maxlen-end_symbol.length))
      if (a_symbol.length>1)
         new_pattern=a_symbol*how_many+end_symbol
      else
         if (end_symbol.length>1)
            a_symbol=end_symbol
            new_pattern=a_symbol*how_many+end_symbol
         elsif (end_symbol.length==1)
            a_symbol=end_symbol*2
            new_pattern=a_symbol*how_many+end_symbol
         else
            a_symbol="**"
            new_pattern=a_symbol*how_many+end_symbol
         end
      end
      return (new_pattern)
   end
   
   # 1234567-10-2345678901234567-20-234567-30-234567-40-234567-50-234567-60-234567-50-234
   # 123456789012345678901234567890123456789012345678901234567890123456789012345678901234
   
end
