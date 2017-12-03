
layerHelper n l acc = if n <= (l * l)
                      then acc
                      else layerHelper n (l + 2) (acc + 1)

layer n = layerHelper n 1 0

layerMax n = (((2 * n) + 1)) * (((2 * n) + 1))

layerCount n = layerMax n - layerMax (n - 1)

