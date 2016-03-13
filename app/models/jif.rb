class Jif < ActiveRecord::Base
  has_attached_file :image, styles: { mosaic: "200x200#" }, default_url: "https://placehold.it/200x200"
  validates_attachment_content_type :image, content_type: /\Aimage/
  validates_attachment_file_name :image, matches: [/gif\Z/, /jpg\Z/, /png\Z/]
  validates_attachment :image, content_type: { content_type: ["image/gif", "image/jpeg", "image/png"] }, size: { in: 0..5.megabytes }
end
