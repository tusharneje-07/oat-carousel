# oat-carousel

`oat-carousel` is the extracted Oat UI carousel extension.

It provides:
- `<ot-carousel>`

## Install

Load Oat core first, then this extension:

```html
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/tusharneje-07/oat@main/dist/oat.min.css" />
<script src="https://cdn.jsdelivr.net/gh/tusharneje-07/oat@main/dist/oat.min.js" defer></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/tusharneje-07/oat-carousel@main/dist/oat-carousel.min.css" />
<script src="https://cdn.jsdelivr.net/gh/tusharneje-07/oat-carousel@main/dist/oat-carousel.min.js" defer></script>
```

## Usage

```html
<ot-carousel style="max-width: 34rem;">
  <div data-carousel-track>
    <article data-carousel-slide>Slide 1</article>
    <article data-carousel-slide>Slide 2</article>
    <article data-carousel-slide>Slide 3</article>
  </div>
</ot-carousel>
```

With autoplay:

```html
<ot-carousel autoplay="2500">
  <div data-carousel-track>
    <article data-carousel-slide>Slide 1</article>
    <article data-carousel-slide>Slide 2</article>
  </div>
</ot-carousel>
```

## API

```js
const carousel = document.querySelector('ot-carousel');
carousel.next();
carousel.prev();
carousel.goTo(2);
carousel.activeIndex;
```

Events:
- `ot-carousel-change` with `{ index, slide }`

## Build

```bash
make dist
```

Generated artifacts are committed in `dist/`.

## License

MIT
