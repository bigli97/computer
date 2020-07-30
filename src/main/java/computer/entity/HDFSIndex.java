package computer.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HDFSIndex {
	private Long id;
	private Double configuredCapacity;
	private Double presentCapacity;
	private Double dfsRemaining;
	private Double nonDfsUsed;
}
