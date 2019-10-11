class Image
  

    def initialize(array)
      @image = array
    end


    def output_image
      @image.each do |row|
        puts row.join
      end
    end


    def blur(distance) 
      distance.times do
        blur_pixel
      end
    end

    #find coordinates when element = 1
      coords = [] #define variable coords as an array
      @image.each_with_index do |row, row_index| #find row index
        row.each_with_index do |element, col_index| #find col index
          if element == 1  #element to blur
              coords << {row_index: row_index, col_index: col_index} #store the coordinates as an object
          end
        end
      end
      coords.each do |coord|
        blur_pixel(coord[:row_index], coord[:col_index]) #call coords as objects to blur
      end
    end

    def blur_pixel (row_index, col_index) #define blur_pixel function with parameters row_index and col_index
           

              @image[row_index - 1][col_index] = 1 unless row_index == 0 #blur up
              @image[row_index + 1][col_index] = 1 unless row_index == 3 #blur down
              @image[row_index][col_index + 1] = 1 unless col_index == 3 #blur right
              @image[row_index][col_index - 1] = 1 unless col_index == 0 #blur left
    end



end

  image = Image.new([
    [0, 0, 0, 0],
    [0, 1, 0, 0],
    [0, 0, 0, 1],
    [0, 0, 0, 0]
  ])
 
  image.blur
  image.output_image
 
  



