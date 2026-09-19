package br.edu.unifio.ecommerce.entity;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter

public class Pagamento {
    @Id
    @GeneratedValue (strategy = GenerationType.IDENTITY)
    private Integer Id;

    private BigDecimal valor;
    private LocalDateTime data;
    private String status;

    @OneToOne 
    private Pedido pedido;
}
