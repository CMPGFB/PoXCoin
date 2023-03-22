(define-data-var stx-price uint u1000) ;; STX price in USD, e.g., u1000 represents $1.00

;; Only an authorized oracle can update the STX price
(define-data-var oracle-address principal tx-sender)

(define-public (set-stx-price (new-price uint))
  (begin
    (asserts! (is-eq tx-sender (var-get oracle-address)) (err u1))
    (var-set stx-price new-price)
    (ok true)
))

(define-public (set-oracle-address (new-address principal))
  (begin
    (asserts! (is-eq tx-sender (var-get oracle-address)) (err u1))
    (var-set oracle-address new-address)
    (ok true)
))

(define-read-only (get-stx-price)
  (var-get stx-price)
)
