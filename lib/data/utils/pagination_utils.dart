typedef PaginationRange = ({
  int from,
  int to,
});

PaginationRange getPagination(int pageNumber, int pageSize) {
  final from = pageNumber * pageSize;
  final to = from + pageSize - 1;

  return (
    from: from,
    to: to,
  );
}
