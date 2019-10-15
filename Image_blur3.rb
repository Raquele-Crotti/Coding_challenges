class Image
  

    def initialize(array)
      @image = array
      @coords = [] 
    end


    def output_image
      @image.each do |row|
        puts row.join
      end
    end


    def blur(distance=0)#find coordinates when element = 1
      @image.each_with_index do |row, row_index| #find row index
        row.each_with_index do |element, col_index| #find col index
          if element == 1  #element to blur
              @coords << {row_index: row_index, col_index: col_index} #store the coordinates as an object
          end
        end
      end
      @coords.each do |coord|
        blur_pixel(coord[:row_index], coord[:col_index], distance) #call coords as objects to blur
      end
    end

    def blur_pixel (row_index, col_index, distance) #define blur_pixel function with parameters row_index and col_index
           
            return unless distance > 0
              if row_index != 0
                @image[row_index - 1][col_index] = 1 
                blur_pixel(row_index - 1,col_index, distance - 1)
              end
              if row_index != 3
                @image[row_index + 1][col_index] = 1 
                blur_pixel(row_index + 1,col_index, distance - 1)
              end 
              if col_index != 3
                @image[row_index][col_index + 1] = 1 
                blur_pixel(row_index,col_index + 1, distance - 1)
              end
              if col_index != 0
                @image[row_index][col_index - 1] = 1 
                blur_pixel(row_index,col_index - 1, distance - 1)
              end
    end

    def Manhattan_distance(pixel1,pixel2)
      column_delta = pixel1[:col_index] - pixel2[:col_index]
      row_delta = pixel1[:row_index] - pixel2[:row_index]
      return column_delta + row_delta
    end


end

  image = Image.new([
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 0],
    [0, 0, 0, 1]
  ])
 
  image.blur(2)
  image.output_image
 
  



