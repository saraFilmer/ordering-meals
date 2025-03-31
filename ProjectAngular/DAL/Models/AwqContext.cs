using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace DAL.Models;

public partial class AwqContext : DbContext
{
    public AwqContext()
    {
    }

    public AwqContext(DbContextOptions<AwqContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Buy> Buys { get; set; }

    public virtual DbSet<Category> Categories { get; set; }

    public virtual DbSet<Company> Companies { get; set; }

    public virtual DbSet<Customer> Customers { get; set; }

    public virtual DbSet<DetailsBuy> DetailsBuys { get; set; }

    public virtual DbSet<DisCount> DisCounts { get; set; }

    public virtual DbSet<Product> Products { get; set; }

//    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
//#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
//        => optionsBuilder.UseSqlServer("Data Source=DESKTOP-UU7JES9;Initial Catalog=awq; Trusted_Connection=True;MultipleActiveResultSets=True;Encrypt=False");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Buy>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Buy__3214EC071E35F327");

            entity.ToTable("Buy");

            entity.Property(e => e.More).HasMaxLength(70);
            entity.Property(e => e.Paid).HasColumnName("paid");

            entity.HasOne(d => d.IdCustomersNavigation).WithMany(p => p.Buys)
                .HasForeignKey(d => d.IdCustomers)
                .HasConstraintName("FK__Buy__IdCustomers__4316F928");
        });

        modelBuilder.Entity<Category>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Category__3214EC07BC1B4006");

            entity.ToTable("Category");

            entity.Property(e => e.NameCategory).HasMaxLength(70);
        });

        modelBuilder.Entity<Company>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Company__3214EC078EF3BF8B");

            entity.ToTable("Company");

            entity.Property(e => e.NameCompany).HasMaxLength(70);
        });

        modelBuilder.Entity<Customer>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Customer__3214EC07FE65DF61");

            entity.Property(e => e.Amail).HasMaxLength(60);
            entity.Property(e => e.Name).HasMaxLength(70);
            entity.Property(e => e.Phon).HasMaxLength(10);
        });

        modelBuilder.Entity<DetailsBuy>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__DetailsB__3213E83F3D9544C1");

            entity.ToTable("DetailsBuy");

            entity.Property(e => e.Id).HasColumnName("id");

            entity.HasOne(d => d.IdBuyNavigation).WithMany(p => p.DetailsBuys)
                .HasForeignKey(d => d.IdBuy)
                .HasConstraintName("FK__DetailsBu__IdBuy__440B1D61");

            entity.HasOne(d => d.IdproductNavigation).WithMany(p => p.DetailsBuys)
                .HasForeignKey(d => d.Idproduct)
                .HasConstraintName("FK__DetailsBu__Idpro__44FF419A");
        });

        modelBuilder.Entity<DisCount>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__DisCount__3213E83FAD087432");

            entity.ToTable("DisCount");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Count).HasColumnName("count");
            entity.Property(e => e.TypeName)
                .HasMaxLength(15)
                .IsFixedLength()
                .HasColumnName("typeName");
        });

        modelBuilder.Entity<Product>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Product__3214EC0758DD4B40");

            entity.ToTable("Product");

            entity.Property(e => e.Description)
                .HasMaxLength(70)
                .HasColumnName("description");
            entity.Property(e => e.Name).HasMaxLength(70);
            entity.Property(e => e.Pic)
                .HasMaxLength(70)
                .HasColumnName("pic");
            entity.Property(e => e.UpDate).HasColumnName("Up_Date");

            entity.HasOne(d => d.IdCategoryNavigation).WithMany(p => p.Products)
                .HasForeignKey(d => d.IdCategory)
                .HasConstraintName("FK__Product__IdCateg__45F365D3");

            entity.HasOne(d => d.IdCompanyNavigation).WithMany(p => p.Products)
                .HasForeignKey(d => d.IdCompany)
                .HasConstraintName("FK__Product__IdCompa__46E78A0C");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
