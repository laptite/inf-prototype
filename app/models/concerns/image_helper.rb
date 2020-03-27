module ImageHelper

	def resize_image(key, pixel=1)
    processed = self.send(key).variant(
      loader: { page: nil }, 
      combine_options: image_options(key, pixel)
    ).processed
    return processed
  end

  private

    def image_options(key, pixel)
      {
        coalesce: true,
        thumbnail: image_dimension(key, pixel), 
        gravity: 'center', 
        extent: image_dimension(key, pixel)
      }
    end

    def image_dimension(key, pixel)
      attachment = self.send(key).try(:attachment).try(:blob).try(:metadata)
      if attachment.present? && attachment[:width].present?
        width  = attachment[:width]*pixel
        height = attachment[:height]*pixel
        return "#{width}x#{height}"
      end
    end
end