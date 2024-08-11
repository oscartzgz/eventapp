class Event < ApplicationRecord
  FAKE_IMAGES=[
    "https://images.unsplash.com/photo-1511795409834-ef04bbd61622?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZXZlbnR8ZW58MHx8MHx8fDA%3D",
    "https://jdinstituteoffashiontechnology.com/wp-content/uploads/2023/03/event-management-813x431.jpg",
    "https://www.inspira.com.au/wp-content/uploads/2016/12/events-management-3.jpg",
    "https://marketplace.canva.com/EAFEBm3khfo/1/0/1131w/canva-black-blue-modern-party-night-club-flyer-IF0d5Es4t6c.jpg",
    "https://eventcreate-v1.s3.us-west-1.amazonaws.com/uploads%2Fdd9ef872-0405-4e80-9620-5748351c24f7%2Fjack-sloop-qelGaL2OLyE-unsplash.jpeg",
    "https://eventcreate-v1.s3.us-west-1.amazonaws.com/uploads%2Fd0b86167-c36b-4d65-ae80-d14789f5fd23%2Fjanko-ferlic-zHJ4ph3GRyg-unsplash.jpg",
    "https://eventcreate-v1.s3.us-west-1.amazonaws.com/uploads%2F97d8e8bf-d41d-4127-9f8c-cf0a53819a63%2Fconcert.png",
    "https://amazingdiscoveries-assets.azureedge.net/pictures/2024/05/13/6lgue219zo_AD_CA_FOT_2019_0601.jpg",
    "https://eventcreate-v1.s3.us-west-1.amazonaws.com/uploads%2F07cd24cd-24e7-415f-9a30-5f7afea82868%2Fdavid-holifield-Z26qv5wkyZw-unsplash.jpg",
    "https://med.stanford.edu/news/all-news/2017/03/conference-on-future-of-medical-education-set-for-april-22-23/_jcr_content/main/image.img.780.high.jpg/medxed-prober.jpg",
    "https://www.high5events.co.uk/application/files/thumbnails/lg_banner/3616/1484/4437/High5-Healthcare-Medical-Conferences-Congresses.jpg"
  ]

  belongs_to :user
  has_many_attached :images
  has_rich_text :content

  validates_presence_of :name, :start_at, :end_at, :content

  enum :state, { draft: 0, published: 1, archived: 3 }, default: :draft
end
