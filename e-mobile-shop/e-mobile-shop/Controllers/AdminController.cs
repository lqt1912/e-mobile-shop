﻿using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using e_mobile_shop.Models;
using Microsoft.AspNetCore.Hosting;
using System.IO;
using Microsoft.AspNetCore.Http;
using e_mobile_shop.Models.Helpers;


namespace e_mobile_shop.Controllers
{
    public class AdminController : Controller
    {
        private readonly IWebHostEnvironment webHostEnvironment;
        public AdminController(IWebHostEnvironment hostEnvironment)
        {
            webHostEnvironment = hostEnvironment;
        }

        // [Authorize(Roles = "Quản trị viên")]
        public IActionResult Index()
        {
            return View();
        }
        public IActionResult QuanLyUser(string searchValue)
        {
            List<AspNetUsers> list = DataAccess.context.AspNetUsers.ToList();
            List<AspNetUsers> rs = new List<AspNetUsers>();
            if (!String.IsNullOrEmpty(searchValue))
            {

                foreach (var item in list)
                {
                    if (item.UserName.ToLower().Contains(searchValue.ToLower().Trim()))
                        rs.Add(item);
                    else if (!string.IsNullOrEmpty(item.HoTen) && item.HoTen.ToLower().Contains(searchValue.ToLower().Trim()))
                    {
                        rs.Add(item);
                    }
                }
                return View(rs).WithSuccess("Tìm kiếm", searchValue);
            }
            return View(list);
        }
        public IActionResult QuanLyDonHang(string searchValue)
        {
            List<DonHang> list = DataAccess.context.DonHang.ToList();
            List<DonHang> rs = new List<DonHang>();
            foreach(var i in list)
            {
                i.Ghichu = i.NgayDatMua.Value.ToString("HH:mm, dd/MM/yyyy");
            }
            if (!String.IsNullOrEmpty(searchValue))
            {

                foreach (var item in list)
                {
                    if (item.MaDh.ToLower().Contains(searchValue.ToLower().Trim()))
                        rs.Add(item);
                    else if (!string.IsNullOrEmpty(item.HoTen) && item.HoTen.ToLower().Contains(searchValue.ToLower().Trim()))
                    {
                        rs.Add(item);
                    }
                }
                return View(rs).WithSuccess("Tìm kiếm", searchValue);
            }
            return View(list);
        }
        public IActionResult ChiTietDonHang(string id)
        {
        
            return View(DataAccess.context.DonHang.Where(x=>x.MaDh == id).ToList().FirstOrDefault());
        }
        public IActionResult ChinhSuaDonHang(string id)
        {
            
            return View(DataAccess.context.DonHang.Where(x => x.MaDh == id).ToList().FirstOrDefault());
        }

        [HttpPost]
        public IActionResult ChinhSuaDonHang( DonHang model, IFormCollection fc)
        {
            DonHang dh = DataAccess.GetDonHang(fc["MaDh"]);
            dh.TinhTrangDh = model.TinhTrangDh;
            DataAccess.context.DonHang.Update(dh);
            DataAccess.context.SaveChanges();
            return RedirectToAction("QuanLyDonHang", "Admin").WithSuccess("Thành công", "Đơn hàng đã được sửa.");
        }
        public IActionResult QuanLy(string id, string searchValue)
        {
            ViewData["LoaiSp"] = id;
            var a = DataAccess.ReadSanPham(id);
            List<SanPham> rs = new List<SanPham>();
            if (!String.IsNullOrEmpty(searchValue))
            {

                foreach (var item in a)
                {
                    if (item.TenSp.ToLower().Contains(searchValue.ToLower().Trim()) || item.MaSp.ToLower().Contains(searchValue.ToLower().Trim()))
                        rs.Add(item);
                }
                return View(rs).WithSuccess("Tìm kiếm", searchValue);
            }


            return View(a);
        }
        //public IActionResult QuanLy(string maloai, string search)
        //{
        //    return View(DataAccess.context.SanPham.Where(x => x.MaSp.ToLower().Contains(search.ToLower()) || x.TenSp.ToLower().Contains(search.ToLower())));
        //}
        public IActionResult QuanLyDienThoai()
        {
            return View(DataAccess.ReadSanPham("LSP0002"));
        }
        public IActionResult Them(string Id)
        {
            ViewData["MaLoai"] = Id;
            ViewData["TenLoai"] = DataAccess.context.LoaiSp.Find(Id).TenLoai;
            return View();
        }

        public IActionResult XoaSanPham(string Id)
        {
            DataAccess.context.SanPham.Find(Id).Status = 0;
            DataAccess.context.SaveChanges();
            return RedirectToAction("QuanLy", "Admin", new { id = DataAccess.context.SanPham.Find(Id).LoaiSp }).WithSuccess("Thành công", "Bạn đã xóa sản phẩm khỏi danh sách.");
        }

        public IActionResult ChinhSua(string Id)
        {
            SanPham sp = DataAccess.context.SanPham.Find(Id);
            return View(sp);
        }

        [HttpPost]
        public IActionResult ChinhSua(
            SanPham model, IFormFile AnhDaiDien,
            IFormCollection fc,
            IFormFile productImages1,
            IFormFile productImages2,
            IFormFile productImages3)
        {
            string message = "";
            model.MaSp = fc["MaSp"];
            SanPham a = DataAccess.context.SanPham.Find(fc["MaSp"]);
           

            if (AnhDaiDien == null)
            {
                model.AnhDaiDien = a.AnhDaiDien;
            }
            else
            {
                model.AnhDaiDien = UploadedFile(AnhDaiDien, "ProductAvatar");
            }
            
            if (ModelState.IsValid)
            {
                model.Status = string.IsNullOrEmpty(fc["status"]) ? 0 : 1;
                DataAccess.context.Entry(a).CurrentValues.SetValues(model);
                DataAccess.context.SaveChanges();

                AnhSanPham pic = DataAccess.context.AnhSanPham.Where(x => x.MaSp == model.MaSp).FirstOrDefault();
                if (productImages1 != null)
                    pic.Anh1 = UploadedFile(productImages1, "ProductImages");
                if (productImages2 != null)
                    pic.Anh2 = UploadedFile(productImages2, "ProductImages");
                if (productImages3 != null)
                    pic.Anh3 = UploadedFile(productImages3, "ProductImages");

                DataAccess.context.AnhSanPham.Update(pic);
                DataAccess.context.SaveChanges();

                // List<ThongSoKiThuat> listTSKT = DataAccess.ReadThongSoKiThuat(model.MaSp);

                foreach (var tskt in DataAccess.ReadThongSoKiThuat(model.MaSp))
                {
                    tskt.GiaTri = fc[tskt.ThongSo];
                    DataAccess.context.Update(tskt);
                    DataAccess.context.SaveChanges();

                }

                //ThongSoKiThuat temp;
                //foreach (var ts in DataAccess.ReadThongSo(model.LoaiSp))
                //{
                //    temp = new ThongSoKiThuat()
                //    {
                //        MaSp = model.MaSp,
                //        ThongSo = ts.MaThongSo,
                //        GiaTri = fc[ts.MaThongSo],

                //    };

                //    DataAccess.context.ThongSoKiThuat.Add(temp);
                //    DataAccess.context.SaveChanges();
                //    temp = null;

                //}
                return RedirectToAction("QuanLy", "Admin", new { id = model.LoaiSp }).WithSuccess("Thành công", "Sản phẩm đã được sửa");
            }
            else
            {
                return View(model);
            }
        }


        [HttpPost]
        public IActionResult Them(SanPham model,
            IFormFile AnhDaiDien,
            IFormCollection fc,
            IFormFile productImages1,
            IFormFile productImages2,
            IFormFile productImages3
            )
        {
            string message = "";

            if (ModelState.IsValid)
            {

                //  model.MaSp = (DataAccess.context.SanPham.ToList().Count() + 1).ToString();

                model.AnhDaiDien = UploadedFile(AnhDaiDien, "ProductAvatar");
                model.SoLuotXemSp = 0;

                DataAccess.context.SanPham.Add(model);
                DataAccess.context.SaveChanges();

                AnhSanPham pic = new AnhSanPham()
                {

                    MaSp = model.MaSp,
                    Anh1 = UploadedFile(productImages1, "ProductImages"),
                    Anh2 = UploadedFile(productImages2, "ProductImages"),
                    Anh3 = UploadedFile(productImages3, "ProductImages")
                };

                DataAccess.context.AnhSanPham.Add(pic);
                DataAccess.context.SaveChanges();

                ThongSoKiThuat tskt;
                List<ThongSo> listTS = DataAccess.ReadThongSo(model.LoaiSp).ToList();
                for (int i = 0; i < listTS.Count(); i++)
                {

                    tskt = new ThongSoKiThuat()
                    {
                        MaSp = model.MaSp,
                        ThongSo = listTS[i].MaThongSo,
                        GiaTri = fc[listTS[i].MaThongSo],

                    };

                    DataAccess.context.ThongSoKiThuat.AddAsync(tskt);
                    DataAccess.context.SaveChanges();
                    tskt = null;

                }



                //for (int i = 1; i < 10; i++)
                //{
                //    var param = "attribute_" + i.ToString() + "_name";
                //    var param2 = "attribute_" + i.ToString() + "_value";
                //    if (fc[param].ToString()!="" && fc[param2].ToString() != "")
                //    {
                //        var thongSoKiThuat = new ThongSoKiThuat()
                //        {
                //            MaTskt = (DataAccess.context.ThongSoKiThuat.ToList().Count() + 1).ToString(),
                //            ThuocTinh = fc[param],
                //            GiaTri = fc[param2],
                //            MaSp = model.MaSp
                //        };
                //        DataAccess.context.ThongSoKiThuat.Add(thongSoKiThuat);
                //        DataAccess.context.SaveChanges();
                //    }
                //    else break;

                //}
                return RedirectToAction("QuanLy", "Admin", new { id = model.LoaiSp }).WithSuccess("Thành công", "Sản phẩm đã được sửa");
            }
            else
            {
                ModelState.AddModelError("", "aaa");
                ViewData["MaLoai"] = model.LoaiSp;
                return View(model);
            }
        }

        private string UploadedFile(IFormFile file, string folder)
        {
            string uniqueFileName = null;

            if (file != null)
            {
                string uploadsFolder = Path.Combine(webHostEnvironment.WebRootPath, folder);
                uniqueFileName = "new" + Guid.NewGuid().ToString() + "." + file.FileName.Split(".")[1].ToLower();
                string filePath = Path.Combine(uploadsFolder, uniqueFileName);
                using (var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    file.CopyTo(fileStream);
                }
            }
            return uniqueFileName;
        }

        [HttpGet]
        public IActionResult RegisterWithRoles()
        {
            return View();
        }
        public IActionResult QuanLyKhuyenMai(string searchValue)
        {
            List<Voucher> list = DataAccess.context.Voucher.ToList();
            List<Voucher> rs = new List<Voucher>();
       
            if (!String.IsNullOrEmpty(searchValue))
            {

                foreach (var item in list)
                {
                    if (item.VoucherId.ToLower().Contains(searchValue.ToLower().Trim()))
                        rs.Add(item);
                    else if (!string.IsNullOrEmpty(item.VoucherName) && item.VoucherName.ToLower().Contains(searchValue.ToLower().Trim()))
                    {
                        rs.Add(item);
                    }
                }
                return View(rs).WithSuccess("Tìm kiếm", searchValue);
            }
            return View(list);
        }
        public IActionResult XoaKhuyenMai(string Id)
        {
            DataAccess.context.Voucher.Find(Id).Status = 0;
            DataAccess.context.SaveChanges();
            return RedirectToAction("QuanLyKhuyenMai", "Admin").WithSuccess("Thành công", "Bạn đã xóa sản phẩm khỏi danh sách.");
        }
        public IActionResult ThemKhuyenMai( )
        {
            return View();
        }
        [HttpPost]
        public IActionResult ThemKhuyenMai(Voucher model)
        {
            if(ModelState.IsValid)
            {
                DataAccess.context.Voucher.Add(model);
                DataAccess.context.SaveChanges();
                return RedirectToAction("QuanLyKhuyenMai", "Admin").WithSuccess("Thành công", "Đã thêm khuyến mãi mới.");
            }
            return View(model);
        }

        public IActionResult Detail(string id)
        {
            return View(DataAccess.context.SanPham.Find(id));
        }

    }
}