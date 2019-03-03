# @param {Integer[][]} grid
# @return {Integer}
def max_increase_keeping_skyline(grid)
    @grid =  grid
    @result = 0
    @grid.each_with_index do |building_row, row_index|
        building_row.each_with_index do |building, building_index|
            @column_max = building
            for i in 0..(building_row.length-1)
                if @grid[i][building_index] >= @column_max
                   @column_max = @grid[i][building_index]
                end
            end
              @result += [[building_row.max, @column_max].min,building].max - building
        end
    end
    @result
end
# cannot guarentee the squareness of the grid? hmm. Hash would be better here
