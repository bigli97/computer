package computer.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ComputerIndex {
	private Long id;
	private Double cpuUsage;
	private Double memoryUsage;
	private Double networkSpeed;
}
