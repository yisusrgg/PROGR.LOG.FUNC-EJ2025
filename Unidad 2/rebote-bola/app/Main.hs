import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game

-- Definimos el estado del juego: posición y velocidad de la bola
type Estado = (Float, Float, Float, Float)

-- Dimensiones de la ventana
ancho :: Float
ancho = 800

alto :: Float
alto = 600

-- Color de fondo
fondo :: Color
fondo = black

-- Radio de la bola
radio :: Float
radio = 20

-- Velocidad inicial de la bola
velocidadX, velocidadY :: Float
velocidadX = 200
velocidadY = 150

-- Dibuja la bola en su posición actual
dibuja :: Estado -> Picture
dibuja (x, y, _, _) = translate x y $ color white $ circleSolid radio

-- Actualiza la posición de la bola y maneja los rebotes
actualiza :: Float -> Estado -> Estado
actualiza dt (x, y, vx, vy) = (x', y', vx', vy')
  where
    x'  = x + vx * dt
    y'  = y + vy * dt
    vx' = if abs x' + radio > ancho / 2 then -vx else vx
    vy' = if abs y' + radio > alto / 2 then -vy else vy

-- Configuración del juego
main :: IO ()
main = play
    (InWindow "Bola Rebotando" (round ancho, round alto) (100, 100)) -- Ventana
    fondo  -- Color de fondo
    60     -- FPS
    (0, 0, velocidadX, velocidadY)  -- Estado inicial (posición y velocidad)
    dibuja  -- Función de dibujo
    actualiza -- Función de actualización