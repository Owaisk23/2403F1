import React from "react";

const Banner = () => {
  return (
    <div
      id="mainCarousel"
      className="carousel slide"
      data-bs-ride="carousel"
      data-bs-interval="3000"
    >
      <div className="carousel-inner">
        <div className="carousel-item active">
          <img
            src="https://cdn.shopify.com/s/files/1/0378/8262/6187/files/Shopify_Banner_MD_1900x666-1_1024x1024.jpg?v=1630388291"
            className="d-block w-100 img-fluid"
            alt="Slide 1"
            style={{
              height: "400px",
              objectFit: "cover",
              objectPosition: "center"
            }}
          />
        </div>
        <div className="carousel-item">
          <img
  src="https://alshayaperfumes.com/cdn/shop/files/hp-slider-b0-summer-collection-050726-d.jpg?v=1783192519&width=2000"
            className="d-block w-100 img-fluid"
            alt="Slide 2"
            style={{
              height: "400px",
              objectFit: "cover",
              objectPosition: "center"
            }}
          />
        </div>
        <div className="carousel-item">
          <img
            src="https://osmure.pk/wp-content/uploads/2022/02/osmure-slider-1-e1775598773227.jpg"
            className="d-block w-100 img-fluid"
            alt="Slide 3"
            style={{
              height: "400px",
              objectFit: "cover",
              objectPosition: "center"
            }}
          />
        </div>
      </div>

      {/* Carousel Controls */}
      <button
        className="carousel-control-prev"
        type="button"
        data-bs-target="#mainCarousel"
        data-bs-slide="prev"
      >
        <span className="carousel-control-prev-icon" aria-hidden="true"></span>
        <span className="visually-hidden">Previous</span>
      </button>
      <button
        className="carousel-control-next"
        type="button"
        data-bs-target="#mainCarousel"
        data-bs-slide="next"
      >
        <span className="carousel-control-next-icon" aria-hidden="true"></span>
        <span className="visually-hidden">Next</span>
      </button>
    </div>
  );
};

export default Banner;
