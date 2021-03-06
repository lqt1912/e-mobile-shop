﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using e_mobile_shop.Models;
using e_mobile_shop.Models.Helpers;
using e_mobile_shop.Models.Repository.MobileShopRepository;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace e_mobile_shop.Controllers
{
    [Authorize]
    public class SanPhamController : Controller
    {
        private readonly IMobileShopRepository _shopRepo;
        public SanPhamController( IMobileShopRepository _repository)
        {
            _shopRepo = _repository;
           
        }
        public IActionResult Index()
        {
            return View();
        }

        [Route("chi-tiet/{id}")]
        public IActionResult SanPham(string Id)
        {
            ViewBag.ListThongSoKiThuat = _shopRepo.GetThongSoKiThuat(Id);
            return View(_shopRepo.GetSanPhamById(Id));
        }

        [Route("danh-sach/{id}")]
        public async Task<IActionResult> DanhSach(int? pageNumber, string Id)
        {

             ViewBag.LoaiSp = _shopRepo.GetLoaiSp(_shopRepo.GetPaginatedListSanPham(Id).ToList().ElementAt(0).LoaiSp);
            ViewBag.NhaSanXuat = _shopRepo.GetNSX();
            var sanphams = _shopRepo.GetPaginatedListSanPham(Id);
            int pageSize = 16;

            return View(await PaginatedList<SanPham>.CreateAsync(sanphams.AsNoTracking(), pageNumber ?? 1, pageSize));
        }
    

    }
}