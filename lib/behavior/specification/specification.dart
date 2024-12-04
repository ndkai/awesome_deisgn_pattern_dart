abstract class Specification<T>{
  bool isSatisfiedBy(T entity);
  Specification and(Specification<T> other);
  Specification or(Specification<T> other);
}

abstract class SpecificationImpl<T> extends Specification<T>{
  @override
  Specification and(Specification other) {
    return AndSpecification(this, other);
  }


  @override
  Specification or(Specification other) {
    // TODO: implement or
    return OrSpecification(this, other);
  }

}

class AndSpecification<T> extends SpecificationImpl<T>{
  final Specification<T> left;
  final Specification<T> right;

  AndSpecification(this.left, this.right);

  @override
  bool isSatisfiedBy(entity) {
    return left.isSatisfiedBy(entity) && right.isSatisfiedBy(entity);
  }
}

class OrSpecification<T> extends SpecificationImpl<T>{
  final Specification<T> left;
  final Specification<T> right;

  OrSpecification(this.left, this.right);

  @override
  bool isSatisfiedBy(entity) {
    return left.isSatisfiedBy(entity) || right.isSatisfiedBy(entity);
  }
}