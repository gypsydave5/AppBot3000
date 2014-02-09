class String

  def red
    "\033[31m#{self}\033[0m"
  end
  
  def green
    "\033[32m#{self}\033[0m"
  end
  
  def blue
    "\033[34m#{self}\033[0m"
  end
  
  def bold
    "\033[1m#{self}\033[22m"
  end
  
end

    
def prompt
  print "Input >"
  gets.chomp
end

def prompt_opts
  puts %{
        WHO is David Wickes?
        WHAT does he do?
        What is his HISTORY with coding?
		WHY does he want to learn to code?}
  puts "        HOW would " + "MA ".red + "change his life?"
  puts %{	Or just leave by EXITing or ENDing.}
end

def standard_moves
  {
  "end" => ["end_game"],
  "exit" => ["end_game"],
  "who" => ["who"],
  "what" => ["what"],
  "how" => ["how"],
  "why" => ["why"],
  "help" => ["help"],
  "history" => ["history"],
  "wait" => ["wait"],
  "dairy farmer" => ["dairy_farmer"],
  "zork" => ["zork"],
  "MAlogo" => ["MA_logo"],
  "skimlinks" => ["skimlinks_logo"]
  }
end

def skimlinks_logo
  puts "                            ,                    
                     ~+IIIIIIIII?=              
                   ,IIIIIIIIIIIIIIII?:          
                   ~IIIIIIIIIIIIIIIIIII         
              ,+   ,III?IIIII?IIIIIIIII?:       
              II:    7III~    ?7IIIIIIIII~      
             ?III+,   +??II=   ,IIIIIIIIII~     
            +IIIIII~   =?III:   ~IIIIIIIIII     
            III?IIIIII+~~II?I:   +IIIIIIIII     
            IIIIIIIIIIIII++?II   ??IIIIIIII,    
            IIIIIIIIIII,  ?II=  +7IIIIIIIII,    
            IIIIIIIIII~  ~II?,+?IIIIIIIIIII,    
            IIIIIIIIII   ,IIIIIIII?IIIIIIII     
            ?IIIIIIIII~   ~III+,  ,+7I?IIII     
            ,IIIIIIIIII,   ,IIII=   ,?I?II=     
             :IIIIIIIIII+   ,+III?    :II=      
              ~I??IIIIIIIIII+==?III:   ?=       
                IIIIIIIIIIIIIIIIIII+            
                 =IIIIIIIIIIIIIIIII+            
                    ,II?IIIIIIIIII:             
                        :=+++=:".blue
end

def MA_logo
  puts "             MMM            MMM     AAAAAAAAAAAAAAAAAA          
             MMMMMM      MMMMMM     AAAAAAAAAAAAAAAAAA          
             MMMMMMMM  MMMMMMMM     AAAAAAAAAAAAAAAAAA          
             MMMMMMMMMMMMMMMMMM     AAAAAAAAAAAAAAAAAA          
             MMMMMMMMMMMMMMMMMM     AAAAAAAAAAAAAAAAAA          
             MMMMMMMMMMMMMMMMMM     AAAAAAAAAAAAAAAAAA          
             MMMMMMMMMMMMMMMMMM     AAAAAAAAAAAAAAAAAA          
             MMMMMMMMMMMMMMMMMM     AAAAAAAA  AAAAAAAA          
             MMMMMMMMMMMMMMMMMM     AAAAAA      AAAAAA          
             MMMMMMMMMMMMMMMMMM     AAA            AAA".red
end

def start_app
#note to self: Ascii illustration is hard with the escape character...
  puts %{
Welcome to...}
puts "---------------------------------------------------------------------
 ___               _        _             _ _         _   _          
|   \\ __ ___ _____( )___   /_\\  _ __ _ __| (_)__ __ _| |_(_)___ _ _  
| |) / _` \\ V / -_)/(_-<  / _ \\| '_ \\ '_ \\ | / _/ _` |  _| / _ \\ ' \\ 
|___/\\__,_|\\_/\\___| /__/ /_/ \\_\\ .__/ .__/_|_\\__\\__,_|\\__|_\\___/_||_|
                               |_|  |_|                              
powered by AppBot 3000(TM)             	69 character width minimum!
---------------------------------------------------------------------".bold.green
  puts %{	or: "How learning to code in 12 weeks would change my life"
}
  start
end

def your_move(choices)
  input_attempts = 0
  while input_attempts < 4
    next_move = prompt
    choices.each do |choice, fate|
      if next_move.include?(choice)
        fate_method, fate_argument = fate
        return send(fate_method)
      end
    end
    input_attempts += 1
    puts ["\nI'm sorry, I did not understand that.","\nGort! Klaatu barada nikto!","\nWhat are you doing Dave?.","\nHave you tried typing 'help'?"].choice
  end
  puts %{
Look, I'm not sure what you meant by that, and that's entirely Dave's
fault. If he was any good at programming an AppBot 3000 then he
wouldn't need to learn to code in just twelve weeks.

So, let's just go right back to the beginning...}
  send (start)
end

def start
  puts "---------------------------------------------------------------------".green
  puts %{

Hi, I'm AppBot 3000, and I've been sent on a special mission from
the not so distant past to tell you how learning to code in twelve
weeks would change David Wickes' life. Dave's my creator - he made me!

So ask me some questions. Questions like:
}
  prompt_opts
  puts %{
}
  your_move(standard_moves)
end

def who
  puts "AppBot 3000 displaying not too personal details...\a".green
  #technically speaking that beep you just heard was green...
  puts %{
David Wickes is a 34 year old human male, originally
from Wisbech, a town in the Fens of East Anglia. He moved
to London in 2010 to see the big city where he met
his partner, Stephanie, with whom he lives in Wandsworth
with Erik the dog.

He studied philosophy at Warwick University for seven
long years before that, becoming highly educated in a
very abstract way. In his time he has been a warden,
a proofreader, a mobile librarian, a private tutor,
a copywriter and a digital marketeer.

He's had jobs - but he's never really had a career.
}
  your_move(standard_moves)
end

def what
  puts "AppBot 3000 displaying current work...".green
  puts %{
At the moment Dave works in digital marketing. He enjoys
a lot of what this involves - creative copy writing, analysis
of website data, coming up with creative solutions, knowing
how to implement best practices for a website design - but lately
he's been feeling like he could do more, and that that more
isn't going to be more marketing... he needs more of a 
technical yet creative challenge in his life, - 
he feels more like an engineer, a problem solver, a hero
working on the bleeding edge of technology. He doesn't
just want to be recommending the the best new apps to his
friends and colleagues - he wants to write them! Or at least
an API for them...

In short, he wants to be a software developer.
}
  your_move(standard_moves)
end

def history
  puts "AppBot 3000 searching database... well, not really a database... anyway...".green

  puts %{
Let's look at Dave's long relationship with coding:

1987 -  ZX Spectrum. Dave carefully copies programs out of books
	to play games. And not very good games either.
	   
1992 -  286 PC. The games get better, but more importantly Dave
	learns his way around the DOS shell.

1996 -  Acorn Archimedes. No programming goes on in the GCSE in IT
	- none at all. Dave becomes disenchanted and does more science.

2003 -  Turing Machines. Taking Advanced Symbolic Logic at
	university exposes Dave to writing instructions for
	Turing machines and	peculiar logical languages.
	He never quite manages to understand Goedels theorems.

2009 - 	HTML/CSS. A lifelong interest in typography and design is
	given an outlet when the boss asks Dave to "make the
	website look better."

2010 -	JavaScript. Someone at work says "Hey, can we make a
	drop-down menu that updates with the next two months
	weekdays not including bank holidays?". "Sure," says
	Dave, and spends the next week working out how to
	hack the company CMS to accept a short piece of code.

2012 -	PHP/SQL. The boss says he's got no idea how the database
	works, and that the developers won't tell him. Dave
	gets a book, hacks through the pages of PHP that make
	up the website, and reverse engineers the SQL database
	structure. Then he works out how to improve it.
}
  your_move(standard_moves)
end

def why
  puts %{
Dave has been working on the edges of coding for most of his life.
A 'responsive dabbler' he learns as much as he needs to fix the
problem in front of him and no more, whether that means editing
an AUTOEXEC.BAT file to free up system memory, or finding out how
to make a marketing email responsive. He really enjoys solving
these problems - even ones he sets himself - and he's successful.

Most of the time.

The problem is that this approach only gets him so far. Without
knowledge of development practices, how all the bits in the stack
fit together, how memory works and is accessed, how to refactor
properly -  he'll always get tangled up in horrible, spaghetti
code, banging his head against the Internet.

He's spoken to friends in the industry, talking about what they
do and the experience of coding full time. He's gone through
the exercises at codecademy.com (www.codecademy.com/gypsydave5)
He's read books and practiced at home. He's never done anything 
that has made him feel as fulfilled as coding. He is ready now.
Dave's New Year's Resolution is to learn to code properly
- PROPERLY - from the ground up, and to change his career to
development. However long it takes, he knows he can do it.

}
  your_move(standard_moves)
end

def how

  puts %{

So, the big question - how would this change Dave's life?

1.	Instead of learning sloooowly, in his spare time, while
	doing a job he no longer enjoys, he would be given a
	turbo-charged boost to a new career.
	
2.	Instead of learning on his own in front of a monitor,
	watching videos and completing tasks on the internet,
	he'd be in a room with motivated people like him - all
	egging each other on and swapping advice and inspiration.
	
3.	Instead of spending the next year hunting around for the
	answers to his questions on coding on the internet he'll
	be able to get the answers from leading software engineers
	directly. Right from the source.
	
4.	Instead of more of his unfulfilling work in marketing, Dave
	would get into a job he enjoys much sooner. Fitter, happier,
	more productive, Dave will be happier, Steph will be happier,
	Erik the dog will be happier too (he's already pretty happy).
  }
  puts "Steph says: I've never seen Dave as happy or enthusiastic as when
he's writing code at his computer. MA will give him the opportunity
to have a career he loves rather than just a job.
  ".red
  puts "AppBot says: If Dave learned to program in 12 weeks then AppBot
3000 wouldn't be such a clunky piece of software running in the
console. I'd be much prettier, with an HTML front end, a real
database sitting behind me, and reams of beautiful Ruby describing
this application. Do it for the future -
				do it for the sake of AppBot 4000.".green
	
puts %{
Basically, Dave wants to get where he's going - now. Coding
boot camp at Maker's Academy would completely change his life.
}

  your_move(standard_moves)
end


def help
  puts %{
Wow, Dave even programmed me with a help function! What a guy...

The available commands are:
}

  prompt_opts
  your_move(standard_moves)

end

def zork
  puts "Returning to source...".green
  puts %{

West of House
You are standing in an open field west
of a white house, with a boarded front
door.
There is a small mailbox here.

}

  puts "Wait, no there isn't. Forget that. Don't open the mailbox \nAsk more questions about Dave instead.\n".green

  your_move(standard_moves)
end

def wait
  puts "Wait for what? Delving...".green
  puts %{

You wait - time passes

Thorin sits down and starts singing about gold.

    }

    your_move(standard_moves)
end

def dairy_farmer
  puts "Invalid input. Searching for best response...".green
  puts %{

How appropriate. You fight like a cow.

    }
    your_move(standard_moves)
end

def end_game

  puts %{
Thanks so much to the good people at Makers Academy...
        
        }

  MA_logo()
  print "\nENTER to scroll"
  gets
  puts %{\nAnd Skimlinks...}
  skimlinks_logo()
  puts %{\nfor putting this competition together.}
  print "\nENTER to scroll"
  gets
  puts "\nAppBot 3000 shutting down...".green
  puts "\n.___________. __    __   _______     _______ .__   __.  _______  
|           ||  |  |  | |   ____|   |   ____||  \\ |  | |       \\ 
`---|  |----`|  |__|  | |  |__      |  |__   |   \\|  | |  .--.  |
    |  |     |   __   | |   __|     |   __|  |  . `  | |  |  |  |
    |  |     |  |  |  | |  |____    |  |____ |  |\\   | |  '--'  |
    |__|     |__|  |__| |_______|   |_______||__| \\__| |_______/ ".green
end

start_app
