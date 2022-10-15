//
//  NoteTableViewCell.swift
//  CoreDataCRUDTest
//
//  Created by Dmitry Aksyonov on 19.06.2022.
//

import UIKit

// MARK: - NoteTableViewCell

final class NoteTableViewCell: UITableViewCell {

	// MARK: Properties

	private lazy var titleLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
		label.font = .monospacedSystemFont(
			ofSize: Constants.cellTitleFontSize,
			weight: .bold
		)
		return label
	}()

	private lazy var bodyLabel = UILabel()
	private lazy var tagLabel = UILabel()
	private lazy var listLabel = UILabel()

	// MARK: Initialization

	override init(
		style: UITableViewCell.CellStyle,
		reuseIdentifier: String?
	) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)

		addSubviews()
		constrainSubviews()
	}

	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	// MARK: Methods

	func setup(with model: Note) {
		self.titleLabel.text = model.name
		self.bodyLabel.text = model.bodyText
		self.tagLabel.text = "''"
		self.listLabel.text = ""
	}

	private func addSubviews() {
		[titleLabel, bodyLabel].forEach {
			$0.translatesAutoresizingMaskIntoConstraints = false
			contentView.addSubview($0)
		}
	}

	private func constrainSubviews() {
		NSLayoutConstraint.activate([
			titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
			titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
			titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),

			bodyLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
			bodyLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
			bodyLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5)
		])
	}
}

// MARK: - Constants

extension NoteTableViewCell {

	private enum Constants {
		static let cellTitleFontSize = 17.0
	}
}
