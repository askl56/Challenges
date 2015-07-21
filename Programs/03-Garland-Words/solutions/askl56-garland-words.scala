object Garland extends App {

  def garland(str: String): Int =
    (for (i <- 1 until str.length if str.startsWith(str.drop(i))) yield str.length - i).headOption.getOrElse(0)

  def chain(str: String): Stream[Char] = (str #:: Stream.continually(str.drop(garland(str)))).flatten


  assert(garland("programmer") == 0)
  assert(garland("ceramic") == 1)
  assert(garland("onion") == 2)
  assert(garland("alfalfa") == 4)

  println(chain("onion").take(20).mkString)
  println(chain("alfalfa").take(19).mkString)

  def largest(url: String, enc: String = "utf-8"): (String, Int) =
    io.Source.fromURL(url, enc).getLines().toStream.par.map(w => (w, garland(w))).maxBy(_._2)

  println(s"Largest English garland = ${largest("https://dotnetperls-controls.googlecode.com/files/enable1.txt")}")
  println(s"Largest German garland = ${largest("http://www.wortschatz.uni-leipzig.de/Papers/top10000de.txt", "latin1")}")
  println(s"Largest Dutch garland = ${largest("http://www.wortschatz.uni-leipzig.de/Papers/top10000nl.txt", "latin1")}")
  println(s"Largest French garland = ${largest("http://www.wortschatz.uni-leipzig.de/Papers/top10000fr.txt", "latin1")}")
  println(s"Largest Italian garland = ${largest("https://gist.githubusercontent.com/ebowman/49107f401c1fab4c957f/raw/503b1bee063f1400f40d3ecd59c96a09e14a8990/gistfile1.txt", "latin1")}")
}
