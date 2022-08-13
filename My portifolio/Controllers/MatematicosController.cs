using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Exercicios.Models;
using Microsoft.AspNetCore.Mvc;

namespace Exercicios.Controllers
{
    public class MatematicosController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }

        [HttpGet]
        public IActionResult Exercicio1()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Exercicio1(string Nome, double Nota1, double Nota2, double Nota3)
        {
            double media = (Nota1 + Nota2 + Nota3) / 3.0;
            ViewData["Resultado"] = $"O aluno {Nome} obteve média {media:N2}";
            return View();
        }

        [HttpGet]
        public IActionResult Exercicio2()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Exercicio2(Prestacao prestacao)
        {
            return View(prestacao);
        }
        
        [HttpGet]
        public IActionResult Exercicio3()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Exercicio3(Cell cell)
        {
            return View(cell);
        }


    }
}