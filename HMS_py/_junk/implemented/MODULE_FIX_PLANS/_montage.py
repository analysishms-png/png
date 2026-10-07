"""Build montage sheets of screenshots (3x2 grid, labeled) for quick visual audit."""
import os
import sys

from PIL import Image, ImageDraw, ImageFont

CELL_W, CELL_H, LAB = 640, 400, 22
COLS, ROWS = 3, 2


def sheet(paths, out):
    W = COLS * CELL_W
    H = ROWS * (CELL_H + LAB)
    canvas = Image.new("RGB", (W, H), (30, 30, 30))
    d = ImageDraw.Draw(canvas)
    try:
        font = ImageFont.truetype("arial.ttf", 14)
    except Exception:
        font = ImageFont.load_default()
    for i, p in enumerate(paths):
        r, c = divmod(i, COLS)
        x0, y0 = c * CELL_W, r * (CELL_H + LAB)
        d.rectangle([x0, y0, x0 + CELL_W, y0 + LAB], fill=(0, 90, 160))
        d.text((x0 + 4, y0 + 3), os.path.basename(p), fill="white", font=font)
        try:
            im = Image.open(p).convert("RGB")
            im.thumbnail((CELL_W - 6, CELL_H - 6))
            canvas.paste(im, (x0 + 3, y0 + LAB + 3))
        except Exception as e:
            d.text((x0 + 6, y0 + LAB + 6), f"ERR {e}", fill="red", font=font)
    canvas.save(out)
    print("saved", out, canvas.size)


def main():
    src_dir = sys.argv[1]
    out_dir = sys.argv[2]
    prefix = sys.argv[3]
    os.makedirs(out_dir, exist_ok=True)
    files = sorted(f for f in os.listdir(src_dir)
                   if f.startswith(prefix) and f.endswith(".png"))
    n = 0
    for i in range(0, len(files), COLS * ROWS):
        batch = [os.path.join(src_dir, f) for f in files[i:i + COLS * ROWS]]
        n += 1
        sheet(batch, os.path.join(out_dir, f"{prefix.rstrip('_')}_{n:02d}.png"))
    print(f"{len(files)} files -> {n} sheets")


if __name__ == "__main__":
    main()
