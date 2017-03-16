# https://codility.com/programmers/lessons/6-sorting/number_of_disc_intersections/

# a = [1, 5, 2, 1, 4, 0]
# Draw as lines instead circles:

#          .        a[5] = 0
#       --          a[3] = 1
#     ----          a[2] = 2
#     --------      a[4] = 4
#    --             a[0] = 1
# ----------        a[1] = 5

# La idea:
# 1 - Generar un listado de "eventos": si un disco empieza (+1) o termina (-1)
# 2 - Ordenar los eventos, teniendo en cuenta que si en un punto P empieza un
#     disco y termina otro, el que empieza siempre aparece primero, para contar
#     la intersecion de ambos en dicho punto
# 3 - Las coordenadas no importan, solo importa el "evento"
#     Recorrer el array, mantener el numero de discos activos (active_discs)
#     Incrementar interseciones con los discos activos cuando un disco empieza

# a = [1, 5, 2, 1, 4, 0]
def solution(a)
  events = []
  a.each_with_index do |v, i|
    events << [i - v, +1]
    events << [i + v, -1]
  end
  # [[-1, 1], [1, -1], [-4, 1], [6, -1], [0, 1], [4, -1], [2, 1], [4, -1],
  # [0, 1], [8, -1], [5, 1], [5, -1]]

  events.sort_by! { |coordinate, event| [coordinate, -event] }
  # [[-4, 1], [-1, 1], [0, 1], [0, 1], [1, -1], [2, 1], [4, -1], [4, -1],
  # [5, 1], [5, -1], [6, -1], [8, -1]]

  events.map!(&:last)
  # [1, 1, 1, 1, -1, 1, -1, -1, 1, -1, -1, -1]

  intersections = 0
  active_discs = 0
  events.each do |event|
    intersections += active_discs if event == 1
    active_discs += event
    return -1 if intersections > 10_000_000
  end
  intersections
end

solution([1, 5, 2, 1, 4, 0]) == 11
solution([]).zero?
solution([0, 1]) == 1
solution([0, 0]).zero?
solution([1, 0, 0, 3]) == 4
solution([1, 1, 1]) == 3
