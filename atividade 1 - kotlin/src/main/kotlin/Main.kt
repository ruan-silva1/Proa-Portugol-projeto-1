package org.example
//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
fun main() {
    //receberUser()
    do {
        println("escreva o nome de uma forma")
        var forma = readln()
        InvocarCalculo(forma)
        println("deseja escolher mais formas? S/N")
        var res = readln()
    }while(res == "s")
}

fun receberUser(){
   println("digite seu nome")
   val nome= readln()
   println("digite sua idade")
   val idade= readln().toInt()
   println("ola $nome sua idade é $idade")
   println(idade is Int)
}


fun InvocarCalculo(formato: String){
    when(formato) {
        "retangulo" -> calcularFormas(formato,"base","altura",1,false,true)
        "paralelograma" -> calcularFormas(formato,"base","altura",1,false,true)
        "quadrado" -> calcularFormas(formato,"lado","lado",1,false,false)
        "losango" ->  calcularFormas(formato,"diagonal maior","diagonal menor",2,false,true)
        "trapezio" ->  calcularFormas(formato,"base maior","base menor",2,true,true)
        "triangulo" ->  calcularFormas(formato,"base","altura",2,false,true)
        "circulo"  -> calcularFormas(formato,"raio","raio",1,false,false)
    }

}

fun calcularFormas(formato: String,k1: String,k2: String,divisor: Int, i3:Boolean,i2:Boolean){

    println("qual o valor da $k1 do $formato")
    val v1 = readln().toDouble()
    var area = v1 * v1

    if(formato == "circulo"){
     area *= 3.14
    }

    if(i2) {
        println("qual o valor da $k2 do $formato")
        val v2 = readln().toDouble()
        area = (v1 * v2) / divisor

        if (i3) {
            println("qual o valor da altura")
            val altura = readln().toDouble()
            area = ((v1 + v2) * altura) / divisor
        }
    }
    println("á área do $formato é $area")
}