(define-map collateral
  ((user principal))
  ((amount uint))
)

(define-public (deposit-collateral (amount uint))
  (let ((user tx-sender))
    (try! (stx-transfer? amount user (as-contract tx-sender)))
    (map-set collateral {user user} {amount (+ amount (get-collateral-balance user))})
    (ok true)
))

(define-public (withdraw-collateral (amount uint))
  (let ((user tx-sender))
    (if (>= (get-collateral-balance user) amount)
        (begin
          (try! (stx-transfer? amount (as-contract tx-sender) user))
          (map-set collateral {user user} {amount (- (get-collateral-balance user) amount)})
          (ok true)
        )
        (err u1)
    )
))

(define-read-only (get-collateral-balance (user principal))
  (default-to u0 (get amount (map-get? collateral {user user})))
)
