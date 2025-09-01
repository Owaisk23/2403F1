using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace CRUD.Models;

public partial class ItemContext : DbContext
{
    public ItemContext()
    {
    }

    public ItemContext(DbContextOptions<ItemContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Category> Categories { get; set; }

    public virtual DbSet<Item> Items { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("data source=.;initial catalog=item;user id=sa;password=aptech; TrustServerCertificate=True");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Category>(entity =>
        {
            entity.HasKey(e => e.CatId).HasName("PK__Category__17B6DD0681CEE79B");

            entity.ToTable("Category");

            entity.Property(e => e.CatId)
                .ValueGeneratedNever()
                .HasColumnName("catId");
            entity.Property(e => e.CatName)
                .HasMaxLength(50)
                .HasColumnName("catName");
        });

        modelBuilder.Entity<Item>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__tmp_ms_x__3214EC07F82F415F");

            entity.ToTable("item");

            entity.Property(e => e.CatId).HasColumnName("catId");
            entity.Property(e => e.Desc).HasColumnName("desc");
            entity.Property(e => e.Image)
                .HasMaxLength(70)
                .HasColumnName("image");
            entity.Property(e => e.Name)
                .HasMaxLength(110)
                .HasColumnName("name");
            entity.Property(e => e.Price).HasColumnName("price");

            entity.HasOne(d => d.Cat).WithMany(p => p.Items)
                .HasForeignKey(d => d.CatId)
                .OnDelete(DeleteBehavior.ClientSetNull)
                .HasConstraintName("FK_item_ToTable");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
