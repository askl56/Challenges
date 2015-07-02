import scala.io

def distribute(pile:List[List[Int]],logs:Int): List[List[Int]] = {
    def loop(pile:List[(Int, Int)], logs:Int): List[(Int, Int)] = {
        def addLog(pile:(Int,Int)): (Int,Int) = (pile._1 + 1, pile._2)
        logs match {
            case 0  =>  pile
            case _  =>  val pile_ = pile.sortBy(_._1)
                        loop(addLog(pile_.head)::pile_.tail, logs-1)
        }
    }
    val size = pile.head.length
    val flatpile = pile.flatten.zipWithIndex
    loop(flatpile, logs).sortBy(_._2).map(_._1).grouped(size).toList
}

def solve() = {
    val size = io.StdIn.readLine.trim.toInt
    val logs = io.StdIn.readLine.trim.toInt
    val pile = for (_ <- (1 to size)) yield {io.StdIn.readLine.trim}
    distribute(pile.map(_.split(" ").filter(_ != "").map(_.toInt).toList).toList, logs).map(_.mkString(" ")).mkString("\n")
}
