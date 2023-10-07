enum Color implements Comparable<Color> {
  red("Red", 1),
  green("Green", 2),
  purple("Purple", 3);

  final String string;
  final int num;

  const Color(this.string, this.num);

  Color getSetMakingColor(Color other) {
    if (this == other) {
      return this;
    }
    return switch (this) {
      red => other == green ? purple : green,
      green => other == red ? purple : red,
      purple => other == red ? green : red
    };
  }

  @override
  int compareTo(Color other) => num - other.num;

  @override
  String toString() => string;
}

enum Shape implements Comparable<Shape> {
  diamond("Diamond", 1),
  squiggle("Squiggle", 2),
  oval("Oval", 3);

  final String string;
  final int num;
  const Shape(this.string, this.num);

  Shape getSetMakingShape(Shape other) {
    if (this == other) {
      return this;
    }
    return switch (this) {
      diamond => other == squiggle ? oval : squiggle,
      squiggle => other == oval ? diamond : oval,
      oval => other == diamond ? squiggle : diamond
    };
  }

  @override
  int compareTo(Shape other) => num - other.num;

  @override
  String toString() => string;
}

enum Shade implements Comparable<Shade> {
  solid("Solid", 1),
  striped("Striped", 2),
  open("Open", 3);

  final String string;
  final int num;

  const Shade(this.string, this.num);

  Shade getSetMakingShade(Shade other) {
    if (this == other) {
      return this;
    }
    return switch (this) {
      solid => other == striped ? open : striped,
      striped => other == open ? solid : open,
      open => other == solid ? striped : solid
    };
  }

  @override
  int compareTo(Shade other) => num - other.num;

  @override
  String toString() => string;
}
