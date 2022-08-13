using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;

namespace Exercicios.Controllers
{
    public class RepeticaoController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}