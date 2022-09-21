#
class PicturePresenter

  def initialize(picture)
    @picture = picture
  end

  def image_url
    @picture&.main_image&.attachment&.url
  end

  def image_byte_size
    @picture&.main_image&.blob&.byte_size
  end

  def image_kbyte_size
    if @picture&.main_image&.blob&.byte_size
      return @picture.main_image.blob.byte_size / 1000
    end
    0
  end

  def humanized_title
    @picture &.title.humanize
  end

  def humanized_description
    @picture &.description.humanize
  end


end
