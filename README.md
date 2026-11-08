# 🌟 NovaCraft — Modern Web Development Landing Page

An exemplary, production-grade **Landing Page** project designed to teach and demonstrate the core fundamentals of HTML5 and CSS3 for beginners, intermediate learners, and creators.

---

## 🎯 Key Learning Objectives Covered

Through this project, you'll learn hands-on:
1. **Semantic HTML5 Structuring**: Organizing layouts with `<header>`, `<nav>`, `<main>`, `<section>`, `<article>`, and `<footer>`.
2. **Multi-Column Layouts**: Using **CSS Grid** for two-dimensional grids (3-column feature cards, 4-column stats, 5-column footer) and **Flexbox** for one-dimensional alignments (navbars, badges, button groups).
3. **Defensive CSS (Preventing Overlapping Elements)**:
   - Avoiding fixed heights (`height: 300px` ❌) in favor of flexible minimums (`min-height` or intrinsic heights ✅).
   - Employing `minmax(320px, 1fr)` with `auto-fit` in CSS Grid to guarantee cards never collide or overflow.
   - Using `flex-wrap: wrap` on button groups and badges.
   - Setting `max-width: 100%` and `display: block` on all images and SVGs.
   - Responsive fluid typography using `clamp()`.
4. **Color Palette & CSS Custom Properties (`:root`)**:
   - Centralized design tokens for colors, shadows, border radiuses, and spacing.
   - Seamless **Dark & Light Mode** switching via `data-theme`.
5. **Interactive Enhancements (Vanilla JavaScript)**:
   - Sticky glass navbar with blur effect.
   - Mobile navigation drawer with animated hamburger toggle.
   - Monthly vs Annual billing toggle with real-time price animation and discount calculation.
   - Interactive FAQ accordion.
   - Lead capture & newsletter forms with instant toast feedback.
   - Back-to-top floating scroll button.

---

## 📁 Project Structure

```
landing_page/
├── index.html           # Main semantic HTML5 document
├── server.js            # Zero-dependency local Node.js static preview server
├── start.bat            # 1-click Windows runner
├── README.md            # Detailed educational guide & documentation
├── css/
│   └── style.css        # Modular CSS with variables, flexbox, grid & responsive queries
├── js/
│   └── main.js          # Interactive UI behaviors (theming, pricing, accordion, drawer)
└── assets/              # Icons and images
```

---

## 🚀 How to Run & View

### Option 1: Direct Browser File (No Server Needed)
Simply double-click [`index.html`](file:///d:/Sales/landing_page/index.html) to open it in your browser.

### Option 2: One-Click Local Server (Port 3000)
Double-click [`start.bat`](file:///d:/Sales/landing_page/start.bat).
Then open: **[http://localhost:3000](http://localhost:3000)**

---

## 🎨 Layout & Section Breakdown

| Section | Layout Technique | Purpose |
| :--- | :--- | :--- |
| **Header** | Flexbox (`justify-content: space-between`) | Brand logo, nav links, theme toggle, CTAs, and mobile hamburger |
| **Hero** | 2-Column CSS Grid (`1.15fr 0.85fr`) | High-converting headline, social proof avatars, and interactive UI card mockup |
| **Partners** | 6-Column CSS Grid (`repeat(6, 1fr)`) | Social proof logos from top industry brands |
| **Features** | 3-Column Responsive Grid (`minmax(320px, 1fr)`) | 6 modular feature cards with gradient hover borders |
| **How It Works** | 3-Column Grid (`repeat(3, 1fr)`) | Numbered 01-02-03 step-by-step workflow process |
| **Showcase** | Alternating 2-Column Grid | Deep dive spotlights with interactive code preview and live metric bars |
| **Stats Strip** | 4-Column Grid (`repeat(4, 1fr)`) | Platform milestones (users, uptime, tasks automated) |
| **Pricing** | 3-Column Grid with Featured Scale | Tier comparison (Starter, Pro, Enterprise) with billing switch |
| **Testimonials**| 3-Column Grid (`repeat(3, 1fr)`) | Customer reviews with avatars, roles, and star ratings |
| **FAQ** | Single-Column Accordion (Max-width 820px) | Expandable answers to common beginner and product questions |
| **CTA Banner** | Full-width Gradient Card | Lead capture email form with instant validation |
| **Footer** | 5-Column Grid (`2.2fr 1fr 1fr 1fr 1.6fr`) | Bio, categorized link groups, newsletter subscription, and legal bar |

---

## 🛠️ How to Customize the Design

### 1. Changing the Color Palette
Open `css/style.css` and locate the `:root` block at lines 16–35:
```css
:root {
  --brand-primary: #6366f1;       /* Change to your favorite brand color */
  --brand-secondary: #8b5cf6;     /* Secondary accent */
  --brand-gradient: linear-gradient(135deg, #6366f1 0%, #8b5cf6 50%, #ec4899 100%);
}
```

### 2. Adjusting Columns & Cards
To switch from a 3-column to a 4-column feature grid on large monitors:
```css
.features-grid {
  grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
}
```

### 3. Adding Your Own Logo and Images
Replace `NovaCraft` in `index.html` with your custom brand name or insert an `<img>` tag inside `.brand-logo`.
