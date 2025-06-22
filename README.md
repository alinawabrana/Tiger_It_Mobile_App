# Tiger_IT_Mobile_App

The **Tiger_IT_Mobile_App** is a time-constrained UI challenge project built using **Flutter**. The goal was to replicate the **Home Page UI** of the popular _Tiger IT App_ (available on the Play Store) within **3 hours** to assess and sharpen UI building and layout structuring skills in a real-world scenario.

This app focuses on clean UI design using **custom widgets**, **dynamic layouts**, and **Flutter's core rendering capabilities** such as `Stack`, `GridView`, `ListView`, and `CarouselSlider`.

---

## Project Objective

- Replicate the Home Page layout of Tiger IT App in **3 hours**
- Practice building clean and modular UIs under a tight deadline
- Implement dynamic layout widgets like horizontal + vertical scroll views, carousels, and stacked containers
- Experiment with advanced **Stack** positioning inside containers

---

## Features Implemented

### Custom AppBar
- Built a **custom AppBar widget** instead of using Flutter’s default `AppBar`
- Includes flexible title, icon, and spacing management

### Carousel Slider (Banner)
- Integrated using the `carousel_slider` package
- Displays a swipeable set of banners at the top of the screen
- Auto-play and manual swipe support

### Category Grid View
- **Responsive GridView** used to showcase different categories (e.g., Services, Jobs, Products)
- Grid tiles include icons, titles, and tappable feedback

### Horizontal ListView Inside Vertical ListView
- Implemented a **nested scrollable layout**:
  - A vertical `ListView` as the base
  - Multiple **horizontal `ListView` widgets** to display items under different category sections
- Scroll performance optimized for nested scroll behavior

### XP Container (Stack Showcase)
- A visually rich container using multiple layers via the `Stack` widget
- Demonstrates positioning of elements like text, icons, and badges inside a `Stack`
- Built to simulate a level, XP, or rewards section with layered visual elements

---

## Tech Stack

| Technology         | Purpose                              |
|--------------------|---------------------------------------|
| **Flutter**        | Cross-platform UI framework           |
| **Dart**           | Programming language                  |
| **Carousel Slider**| Displaying image banners dynamically  |
| **Stack, GridView, ListView** | Core layout widgets       |

---
