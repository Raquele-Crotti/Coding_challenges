  
class Image

    def initialize(array)
      @array = array
    end
  
    def output_image
      @array.each do |row|
        puts row.join
      end
    end
  
    def blur!(distance=1)
      distance.times do
        find_ones
      end
    end
  
    private
  
      def find_ones
        found_ones = []
        @array.each_with_index do |row, row_index|
          row.each_with_index do |item, col_index|
            found_ones << [row_index, col_index] if item == 1
          end
        end
  
        found_ones.each do |coord|
          @array[coord[0]][coord[1] + 1] = 1 if coord[1] + 1 <= @array[coord[0]].length - 1
          @array[coord[0]][coord[1] - 1] = 1 if coord[1] - 1 >= 0
          @array[coord[0] + 1][coord[1]] = 1 if coord[0] + 1 <= @array.length - 1
          @array[coord[0] - 1][coord[1]] = 1 if coord[0] - 1 >= 0
        end
      end
  
  end
  
  image = Image.new([
    [0, 0, 0, 0, 0, 0],
    [0, 1, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 1]
  ])

  image.output_image
  puts
  image.blur!(3)
  image.output_image