/*
NOTE: delete all content in this file, it's only here to show yous some basic functions
Remember: should you have no table or no image and want to compile, don't forget to comment the respective list out in paper.typ
*/

= Chapter 1

== Part 1

#lorem(20)

== Part 2

#lorem(20)

= Chapter 2

See @Test, you can add pictures too!
#figure(
  image("figures/test.png", width: 30%),
  caption: "Test-Image"
)<Test>

#lorem(15),see @bible \
But maybe you're only refering to one specific page? Like in @bible[S. 2] \ \

Let's build a table: \

#figure(
  table(columns: (1fr, 1fr), [1],[2],[3],[4]),
  caption: "Example Table"
)<Table1>

Like seen in @Table1, you can add tables to your document too.


== Picture wrapping

Let's try to text wrap a picture...

#grid(columns: 2, gutter: 0.5em,
  [
    #figure(
      image("figures/test.png", width: 25%, alt: "test-image: line-drawn human"),
      caption: [Wrapped Image]
    )<TestWrap>
  ],
  [
    #lorem(40)
  ]
) 
#lorem(50)

See the README.typ for more information about text wrapping arounf figures



= Some more references

#lorem(20) \
To a website like @ccc
or an image like @Test
