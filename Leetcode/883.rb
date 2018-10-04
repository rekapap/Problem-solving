# @param {Integer[][]} grid
# @return {Integer}
def projection_area(grid)
  n1 = xy(grid)
  n2 = xz(grid)
  n3 = yz(grid)
  n1 + n2 + n3
end

def xy(grid)
  grid.map do |xyz|
    xyz.map do |d|
      d > 0 ? 1 : 0
    end.reduce(0, :+)
  end.flatten.reduce(0, :+)
end

def xz(grid)
  grid.map(&:max).flatten.reduce(0, :+)
end

def yz(grid)
  grid.transpose.map(&:max).flatten.reduce(0, :+)
end

# puts projection_area([[1,2],[3,4]])
